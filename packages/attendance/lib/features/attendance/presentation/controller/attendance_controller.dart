import 'package:attendance/features/attendance/presentation/state/attendance_state.dart';
import 'package:attendance/features/attendance/application/attendance_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final attendanceControllerProvider =
    AutoDisposeNotifierProvider<AttendanceController, AttendanceState>(
      AttendanceController.new,
    );

class AttendanceController extends AutoDisposeNotifier<AttendanceState> {
  @override
  AttendanceState build() {
    return AttendanceState();
  }

  Future<void> getAttendanceStatus() async {
    state = state.copyWith(isLoading: true, errorMsg: null);
    final result = await ref.read(attendanceServiceProvider).getAttendances();
    result.when(
      (success) {
        state = state.copyWith(isLoading: false, attendanceList: success);
      },
      (error) {
        state = state.copyWith(isLoading: false, errorMsg: error.message);
      },
    );
  }
}
