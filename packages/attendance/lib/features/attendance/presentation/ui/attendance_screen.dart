part of 'package:attendance/attendance.dart';

class AttendanceScreen extends ConsumerStatefulWidget {
  const AttendanceScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AttendanceScreenState();
}

class _AttendanceScreenState extends ConsumerState<AttendanceScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ref
          .read(attendanceControllerProvider.notifier)
          .getAttendances(refresh: true);
    });
  }

  @override
  Widget build(BuildContext context) {
    _listener();

    return MainAppScaffoldSliver(
      slivers: const [SliverFillRemaining(child: AttendanceList())],
      floatingActionButton: FloatingActionButton.extended(
        label: Text(context.localizations("attendance.add")),
        icon: const Icon(Icons.add),
        onPressed: () {
          context.push('/map');
        },
      ),
    );
  }

  void _listener() {
    // listen for error
    ref.listen(attendanceControllerProvider.select((value) => value.errorMsg), (
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

    // listen for loading
    ref.listen(
      attendanceControllerProvider.select((value) => value.isLoading),
      (_, next) {
        if (next) {
          context.loaderOverlay.show();
        } else {
          context.loaderOverlay.hide();
        }
      },
    );
  }
}
