part of 'package:attendance/attendance.dart';

class AddAttendanceWithZoneAndNoImage extends ConsumerStatefulWidget {
  const AddAttendanceWithZoneAndNoImage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AddAttendanceWithZoneAndNoImageState();
}

class _AddAttendanceWithZoneAndNoImageState
    extends ConsumerState<AddAttendanceWithZoneAndNoImage> {
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
    final zone = ref.watch(mapControllerProvider.select((value) => value.zone));

    /// [status] == AttendanceStatus.checkedIn means the user previously checked-in and is ready to check-out
    /// [status] == AttendanceStatus.checkedOut means the user previously checked-out and is ready to check-in
    /// Text: [status] == AttendanceStatus.checkedIn then "Check Out" else "Check In"
    /// Button Color : [status] == AttendanceStatus.checkedIn then red else null
    return FilledButton.icon(
      onPressed: zone == null ? null : _addAttendance,
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

  void _addAttendance() async {
    final dateTime = _currentDateTime('dd/MM/yyyy - hh:mm a');
    // upload the image to the server
    await ref.read(mapControllerProvider.notifier).addAttendanceWithoutImage({
      "date": dateTime,
      "transDay": dateTime.split('/')[0],
      "transMonth": dateTime.split('/')[1],
      "transYear": dateTime.split('/')[2].split(" ")[0],
    });
  }

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
}
