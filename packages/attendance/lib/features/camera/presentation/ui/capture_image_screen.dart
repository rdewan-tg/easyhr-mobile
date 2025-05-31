part of 'package:attendance/attendance.dart';

class CaptureImageScreen extends ConsumerStatefulWidget {
  final Map<String, dynamic> extras;
  const CaptureImageScreen({super.key, required this.extras});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CaptureImageScreenState();
}

class _CaptureImageScreenState extends ConsumerState<CaptureImageScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {});
  }

  @override
  Widget build(BuildContext context) {
    _listener();

    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result) async {},
      child: CameraAwesomeBuilder.awesome(
        onMediaCaptureEvent: (event) {
          switch ((event.status, event.isPicture, event.isVideo)) {
            case (MediaCaptureStatus.capturing, true, false):
              debugPrint('Capturing picture...');
            case (MediaCaptureStatus.success, true, false):
              event.captureRequest.when(
                single: _saveSingleImage,
                multiple: _saveMultipleImages,
              );
            case (MediaCaptureStatus.failure, true, false):
              _showSnackBar('Failed to capture picture: ${event.exception}');
            default:
              _showSnackBar(event.toString());
          }
        },
        saveConfig: SaveConfig.photoAndVideo(
          initialCaptureMode: CaptureMode.photo,
          photoPathBuilder: _photoPathBuilder,
          videoOptions: VideoOptions(
            enableAudio: true,
            ios: CupertinoVideoOptions(fps: 10),
            android: AndroidVideoOptions(
              bitrate: 6000000,
              fallbackStrategy: QualityFallbackStrategy.lower,
            ),
          ),
          exifPreferences: ExifPreferences(saveGPSLocation: true),
        ),
        sensorConfig: SensorConfig.single(
          sensor: Sensor.position(SensorPosition.front),
          flashMode: FlashMode.auto,
          aspectRatio: CameraAspectRatios.ratio_4_3,
          zoom: 0.0,
        ),
        enablePhysicalButton: true,
        // filter: AwesomeFilter.AddictiveRed,
        previewAlignment: Alignment.center,
        previewFit: CameraPreviewFit.contain,
        onMediaTap: (mediaCapture) {
          mediaCapture.captureRequest.when(
            single: (single) async {
              await OpenFile.open(single.file?.path); // Open the modified image
            },
            multiple: (multiple) {
              multiple.fileBySensor.forEach((key, value) async {
                await OpenFile.open(value?.path);
              });
            },
          );
        },
        availableFilters: awesomePresetFiltersList,
        topActionsBuilder:
            (state) => AwesomeTopActions(
              state: state,
              children: [
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
              ],
            ),
        bottomActionsBuilder:
            (state) => AwesomeBottomActions(
              state: state,
              left: const SizedBox(),
              right: StreamBuilder<MediaCapture?>(
                stream: state.captureState$,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const SizedBox(width: 72, height: 72);
                  }
                  return SizedBox(
                    width: 72,
                    child: AwesomeMediaPreview(
                      mediaCapture: snapshot.requireData,
                      onMediaTap: (capture) {
                        capture.captureRequest.when(
                          single: (single) async {
                            await OpenFile.open(single.file?.path);
                          },
                        );
                      },
                    ),
                  );
                },
              ),
            ),
      ),
    );
  }

  void _showSnackBar(String message) =>
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message), duration: const Duration(seconds: 5)),
      );

  String _currentDateTime(String format) {
    final timeZone = ref.read(mapControllerProvider.notifier).getTimeZone();

    // initialize Time Zone database from latest
    tz_latest.initializeTimeZones();
    final location = tz.getLocation(timeZone);
    tz.setLocalLocation(location);
    // get the current date and time
    final now = tz.TZDateTime.now(location);
    // format the date and time
    final formattedDateTime = DateFormat(format).format(now);

    return formattedDateTime;
  }

  Future<Null>? _saveSingleImage(SingleCaptureRequest single) async {
    // set isUploading to true - which should show the loading indicator
    ref.read(captureImageControllerProvider.notifier).setLoading(true);

    // get the file
    final file = single.file;
    if (file == null) return;

    final bytes = await file.readAsBytes();
    //final originalImage = img.decodeImage(bytes);

    // get the current date and time
    final dateTime = _currentDateTime('dd/MM/yyyy - hh:mm a');

    // draw the date and time
    final modifiedImageBytes = await compute(processImage, {
      'bytes': bytes,
      'dateTime': dateTime,
      'address': widget.extras['address'],
    });

    // Save the modified image to the original file path
    File(file.path).writeAsBytesSync(modifiedImageBytes);

    // upload the image to the server
    await ref.read(mapControllerProvider.notifier).addAttendance({
      "date": dateTime,
      "transDay": dateTime.split('/')[0],
      "transMonth": dateTime.split('/')[1],
      "transYear": dateTime.split('/')[2].split(" ")[0],
      "file": File(file.path),
    });

    // set isUploading to false
    ref.read(captureImageControllerProvider.notifier).setLoading(false);

    // navigate back -- pask the file path
    if (!mounted) return;
    context.pop(File(file.path));
  }

  Future<Null>? _saveMultipleImages(MultipleCaptureRequest multiple) async {
    multiple.fileBySensor.forEach((key, value) async {
      final file = value;
      if (file == null) return;

      final bytes = await file.readAsBytes();

      // get the current date and time
      final dateTime = _currentDateTime('dd/MM/yyyy - hh:mm a');

      // draw the date and time
      final modifiedImageBytes = await compute(processImage, {
        'bytes': bytes,
        'dateTime': dateTime,
        'address': widget.extras['address'],
      });

      // Save the modified image to the original file path
      File(file.path).writeAsBytesSync(modifiedImageBytes);

      // save the image to the gallery
      // save the image to the gallery

      // upload the image to the server
    });
  }

  Future<CaptureRequest> _photoPathBuilder(List<Sensor> sensors) async {
    // Create a directory where photos will be saved (here we use the temporary directory, using path_provider).
    final Directory extDir = await getTemporaryDirectory();
    // Create a directory for the test
    final dir = await Directory(
      '${extDir.path}/easyhr',
    ).create(recursive: true);

    debugPrint('Directory created: ${dir.path}');
    // If there is only one sensor used, we can build a SingleCaptureRequest with the file path and the sensor
    if (sensors.length == 1) {
      final _photoPath =
          '${dir.path}/${DateTime.now().millisecondsSinceEpoch}.jpg';
      return SingleCaptureRequest(_photoPath, sensors.first);
    }

    // If there are several sensors, we need to build a MultipleCaptureRequest with a map of file paths and sensors
    // Separate pictures taken with front and back camera
    // We create a different path based on wether it's the front or back sensor that takes the picture.
    return MultipleCaptureRequest({
      for (final sensor in sensors)
        sensor:
            '${dir.path}/${sensor.position == SensorPosition.front ? 'front_' : "back_"}${DateTime.now().millisecondsSinceEpoch}.jpg',
    });
  }

  void _listener() {
    // listen for loading
    ref.listen(
      captureImageControllerProvider.select((value) => value.isLoading),
      (_, next) {
        if (next) {
          context.loaderOverlay.show(
            widgetBuilder: (progress) {
              return Stack(
                children: [
                  const ModalBarrier(
                    color: Color.fromRGBO(
                      0,
                      0,
                      0,
                      0.8,
                    ), // 80% transparent black
                    dismissible: false,
                  ),
                  // Loading indicator
                  Center(
                    child: LoadingAnimationWidget.progressiveDots(
                      color: Colors.white,
                      size: 60,
                    ),
                  ),
                ],
              );
            },
          );
        } else {
          context.loaderOverlay.hide();
        }
      },
    );
  }
}

Uint8List processImage(Map<String, dynamic> args) {
  final Uint8List bytes = args['bytes'];
  final String dateTime = args['dateTime'];

  // Decode the image
  final image = img.decodeImage(bytes);
  if (image == null) {
    throw StateError('Invalid image data');
  }

  final data = '''
    $dateTime \n   
    ${args['address']}
  ''';

  //Draw the date and time
  final modifiedImage = img.drawString(
    image,
    data,
    font: img.arial48,
    x: 10,
    y: image.height - 300,
  );

  // Return the encoded modified image
  return img.encodeJpg(modifiedImage, quality: 50);
}
