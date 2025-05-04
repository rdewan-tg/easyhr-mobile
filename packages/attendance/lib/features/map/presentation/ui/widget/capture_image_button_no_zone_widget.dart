part of 'package:attendance/attendance.dart';

class CaptureImageButtonNoZoneWidget extends ConsumerStatefulWidget {
  const CaptureImageButtonNoZoneWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CaptureImageButtonNoZoneWidgetState();
}

class _CaptureImageButtonNoZoneWidgetState
    extends ConsumerState<CaptureImageButtonNoZoneWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ref.read(mapControllerProvider.notifier).getAttendanceStatus();
    });
  }

  @override
  Widget build(BuildContext context) {
    final status = ref.watch(
      mapControllerProvider.select((value) => value.status),
    );

    /// [status] == AttendanceStatus.checkedIn means the user previously checked-in and is ready to check-out
    /// [status] == AttendanceStatus.checkedOut means the user previously checked-out and is ready to check-in
    /// Text: [status] == AttendanceStatus.checkedIn then "Check Out" else "Check In"
    /// Button Color : [status] == AttendanceStatus.checkedIn then red else null
    return FilledButton.icon(
      onPressed: () async {
        final currentAddress = ref.read(mapControllerProvider).currentAddress;
        context.push("/map/camera", extra: {"address": currentAddress});
      },
      label: Text(
        status == AttendanceStatus.checkedIn
            ? "Check Out".hardcoded
            : "Check In".hardcoded,
      ),
      icon:
          status == AttendanceStatus.checkedIn
              ? const Icon(Icons.logout_outlined)
              : const Icon(Icons.logout_rounded),
      style: FilledButton.styleFrom(
        backgroundColor:
            status == AttendanceStatus.checkedIn
                ? Colors
                    .red // Background color for checked-in state
                : null, // Background color for checked-out state
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kSmall),
        ),
      ),
    );
  }
}
