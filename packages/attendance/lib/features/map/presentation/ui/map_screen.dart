part of 'package:attendance/attendance.dart';

class MapScreen extends ConsumerStatefulWidget {
  const MapScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MapScreenState();
}

class _MapScreenState extends ConsumerState<MapScreen> {
  GoogleMapController? _mapController;
  StreamSubscription<Position>? _positionStreamSubscription;

  @override
  void initState() {
    super.initState();
    _initLocation();
  }

  @override
  void dispose() {
    _positionStreamSubscription?.cancel();
    super.dispose();
  }

  Future<void> _initLocation() async {
    await Permission.location.request();
    final isGranted = await Permission.location.isGranted;

    if (isGranted) {
      final locationSettings = LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 10, // meters to move before update
      );

      _positionStreamSubscription = Geolocator.getPositionStream(
        locationSettings: locationSettings,
      ).listen((Position position) async {
        final latLng = LatLng(position.latitude, position.longitude);

        // Update map state
        ref.read(mapControllerProvider.notifier).setCurrentPosition(latLng);

        // Move camera to the new position if map is initialized
        _mapController?.animateCamera(CameraUpdate.newLatLng(latLng));

        // Update the address
        await getAddressFromLatLng(latLng);
      });
    }
  }

  Future<void> getAddressFromLatLng(LatLng position) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      if (placemarks.isNotEmpty) {
        final place = placemarks.first;
        final address =
            "${place.street}, ${place.administrativeArea}, ${place.postalCode}, ${place.country}";
        // update the address state
        ref.read(mapControllerProvider.notifier).setCurrentAddress(address);
      }
    } catch (e) {
      ref.read(mapControllerProvider.notifier).setErrorMsg(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    _listener();

    return Scaffold(
      appBar: AppBar(title: const Text('Attendance')),
      body: Consumer(
        builder: (context, ref, child) {
          final currentPosition = ref.watch(
            mapControllerProvider.select((value) => value.currentPosition),
          );
          return SafeArea(
            child:
                currentPosition == null
                    ? const Center(child: CircularProgressIndicator())
                    : GoogleMap(
                      initialCameraPosition: CameraPosition(
                        target: currentPosition,
                        zoom: 21,
                      ),
                      markers: {
                        Marker(
                          markerId: const MarkerId('currentLocation'),
                          position: currentPosition,
                          infoWindow: const InfoWindow(title: 'You are here'),
                        ),
                      },
                      onMapCreated: (controller) => _mapController = controller,
                      myLocationEnabled: true,
                      myLocationButtonEnabled: true,
                    ),
          );
        },
      ),
      bottomSheet: Consumer(
        builder: (context, ref, child) {
          final currentPosition = ref.watch(
            mapControllerProvider.select((value) => value.currentPosition),
          );
          if (currentPosition == null) return const SizedBox.shrink();
          return SafeArea(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(kLarge),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CurrentAddressWidget(),
                  const SizedBox(height: kMedium),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Flexible(flex: 8, child: ZoneWidget()),
                      const SizedBox(width: kMedium),
                      const CaptureImageButtonWidget(),
                    ],
                  ),
                  const SizedBox(height: kMedium),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _showImageDialog(File imageFile, AttendanceStatus status) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog.adaptive(
          icon: Row(
            children: [
              const Icon(Icons.check, color: Colors.green),
              const SizedBox(width: kSmall),
              Text('Success', style: context.textTheme.titleMedium),
            ],
          ),
          scrollable: true,
          content: Padding(
            padding: const EdgeInsets.all(kSmall),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.file(
                  imageFile,
                  width: 200,
                  height: 250,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: kMedium),
                Text.rich(
                  TextSpan(
                    text: 'You have successfully ',
                    style: context.textTheme.bodyMedium,
                    children: [
                      TextSpan(
                        text:
                            status == AttendanceStatus.checkedIn
                                ? 'Checked In'
                                : 'Checked Out',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color:
                              status == AttendanceStatus.checkedIn
                                  ? Colors.green
                                  : Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton.icon(
              label: Text('Close'),
              icon: const Icon(Icons.close),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  void _listener() {
    // listen for error
    ref.listen(mapControllerProvider.select((value) => value.errorMsg), (
      _,
      next,
    ) {
      if (next != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            duration: const Duration(seconds: 5),
            backgroundColor: context.themeColor.colorScheme.error,
            content: Text(next),
          ),
        );
      }
    });

    // listen for success and show dialog
    ref.listen(
      mapControllerProvider.select((value) => value.isAttendanceAdded),
      (_, next) {
        if (next) {
          final imageFile =
              ref.read(mapControllerProvider.notifier).getImagePath();
          final status = ref.read(mapControllerProvider.notifier).getStatus();
          if (imageFile == null || status == null) return;
          _showImageDialog(File(imageFile), status);
        }
      },
    );
  }
}
