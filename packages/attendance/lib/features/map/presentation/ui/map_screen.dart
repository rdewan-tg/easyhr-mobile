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
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // get all the setting from local db
      ref.read(mapControllerProvider.notifier).getAllSetting();
      // get the zone from api
      ref.read(mapControllerProvider.notifier).getZones();
      // get the consent statement
      ref.read(mapControllerProvider.notifier).getConsentStatement();
    });
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
      const locationSettings = LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 0, // meters to move before update
      );

      _positionStreamSubscription =
          Geolocator.getPositionStream(
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
            "${(place.street?.isNotEmpty ?? false) ? place.street : (place.name ?? '')}, ${place.administrativeArea ?? ''}, ${place.postalCode ?? ''}, ${place.country ?? ''}";
        // update the address state
        ref.read(mapControllerProvider.notifier).setCurrentAddress(address);
      }
    } catch (e) {
      //ref.read(mapControllerProvider.notifier).setErrorMsg(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    _listener();

    return Scaffold(
      appBar: AppBar(title: const Text('Attendance'), centerTitle: true),
      body: Consumer(
        builder: (context, ref, child) {
          final currentPosition = ref.watch(
            mapControllerProvider.select((value) => value.currentPosition),
          );
          return SafeArea(
            child: currentPosition == null
                ? const Center(child: CircularProgressIndicator())
                : GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: currentPosition,
                      zoom: 19,
                    ),
                    markers: {
                      Marker(
                        markerId: const MarkerId('currentLocation'),
                        position: currentPosition,
                        infoWindow: const InfoWindow(title: 'You are here'),
                        onTap: () {}, // Empty onTap to prevent default behavior
                      ),
                    },
                    onMapCreated: (controller) {
                      _mapController = controller;
                      // Show info window after a short delay
                      Future.delayed(const Duration(milliseconds: 500), () {
                        controller.showMarkerInfoWindow(
                          const MarkerId('currentLocation'),
                        );
                      });
                    },
                    myLocationEnabled: true,
                    myLocationButtonEnabled: true,
                  ),
          );
        },
      ),
      bottomSheet: Consumer(
        builder: (context, ref, child) {
          final isZoneEnabled = ref.watch(
            mapControllerProvider.select((value) => value.isZoneEnabled),
          );
          final isCameraEnabled = ref.watch(
            mapControllerProvider.select((value) => value.isCameraEnabled),
          );
          final currentPosition = ref.watch(
            mapControllerProvider.select((value) => value.currentPosition),
          );
          final isConsentStatement = ref.watch(
            mapControllerProvider.select((value) => value.isConsentStatement),
          );
          return SafeArea(
            maintainBottomViewPadding: true,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(kLarge),
              margin: const EdgeInsets.only(bottom: kLarge),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // if camera is enable and consent statement is not accepted,
                  // show the consent statement
                  if (isCameraEnabled && !isConsentStatement) ...[
                    Center(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: kMedium,
                          vertical: kLarge,
                        ),
                        padding: const EdgeInsets.all(kMedium),
                        decoration: BoxDecoration(
                          color: Theme.of(
                            context,
                          ).colorScheme.secondaryContainer,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.info_outline_rounded,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                context.localizations(
                                  "attendance.pleaseReadAndAcceptTheConsentStatement",
                                ),
                                style: Theme.of(context).textTheme.bodyLarge
                                    ?.copyWith(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.onSecondaryContainer,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ] else ...[
                    const CurrentLocationWidget(),
                    const SizedBox(height: kSmall),
                    const CurrentAddressWidget(),
                    const SizedBox(height: kMedium),
                    // if current position is null - remove the check-in and check-out buttons
                    if (currentPosition != null) ...[
                      // if the Zone is enabled - show the zone and capture image button
                      if (isZoneEnabled) ...[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Flexible(flex: 8, child: ZoneWidget()),
                            const SizedBox(width: kMedium),
                            // if the camera is enabled - show the capture image button
                            //else show the add attendance with no image
                            if (isCameraEnabled) ...[
                              const CaptureImageButtonWidget(),
                            ] else ...[
                              const AddAttendanceWithZoneAndNoImage(),
                            ],
                          ],
                        ),
                      ] else ...[
                        //if the camera is enabled - show the capture image button
                        //else show the add attendance with no image
                        if (isCameraEnabled) ...[
                          const Center(child: CaptureImageButtonNoZoneWidget()),
                        ] else ...[
                          const Center(child: AddAttendanceWithNoImage()),
                        ],
                      ],
                    ],
                  ],
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
              Text(
                context.localizations("common.success"),
                style: context.textTheme.titleMedium,
              ),
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
                    text: context.localizations("common.youHaveSuccessfully"),
                    style: context.textTheme.bodyMedium,
                    children: [
                      const TextSpan(text: ' '),
                      TextSpan(
                        text: status == AttendanceStatus.checkedIn
                            ? "${context.localizations("attendance.checkedIn")} ✅"
                            : "${context.localizations("attendance.checkedOut")} 🏃",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: status == AttendanceStatus.checkedIn
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
              label: Text(context.localizations("common.close")),
              icon: const Icon(Icons.close),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  Future<void> _showDialogWithNoImage(AttendanceStatus status) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog.adaptive(
          icon: Row(
            children: [
              const Icon(Icons.check, color: Colors.green),
              const SizedBox(width: kSmall),
              Text(
                context.localizations("common.success"),
                style: context.textTheme.titleMedium,
              ),
            ],
          ),
          scrollable: true,
          content: Padding(
            padding: const EdgeInsets.all(kSmall),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text.rich(
                  TextSpan(
                    text: context.localizations("common.youHaveSuccessfully"),
                    style: context.textTheme.bodyMedium,
                    children: [
                      const TextSpan(text: ' '),
                      TextSpan(
                        text: status == AttendanceStatus.checkedIn
                            ? "${context.localizations("attendance.checkedIn")} ✅"
                            : "${context.localizations("attendance.checkedOut")} 🏃",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: status == AttendanceStatus.checkedIn
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
              label: Text(context.localizations("common.close")),
              icon: const Icon(Icons.close),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  void _listener() {
    // listen to loading
    ref.listen(mapControllerProvider.select((value) => value.isLoading), (
      _,
      next,
    ) {
      if (next) {
        context.loaderOverlay.show();
      } else {
        context.loaderOverlay.hide();
      }
    });
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

    // listen for success and show dialog - schedule push notification
    ref.listen(
      mapControllerProvider.select((value) => value.isAttendanceAdded),
      (_, next) async {
        if (next) {
          final imageFile = ref
              .read(mapControllerProvider.notifier)
              .getImagePath();
          final status = ref.read(mapControllerProvider.notifier).getStatus();
          // check if status is null
          if (status == null) return;

          // refresh the attendance list
          ref
              .read(attendanceControllerProvider.notifier)
              .getAttendances(refresh: true);

          // check if imageFile is null
          if (imageFile != null) {
            _showImageDialog(File(imageFile), status);
          } else {
            _showDialogWithNoImage(status);
          }
        }
      },
    );
  }
}
