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

  Future<void> getAttendances({bool refresh = false}) async {
    if (state.isLoading || state.isPageLoading) {
      return;
    }
    // update state
    state = state.copyWith(
      isLoading: refresh,
      isPageLoading: !refresh,
      errorMsg: null,
    );
    // get service
    final service = ref.read(attendanceServiceProvider);
    // get result
    final pageValue = refresh ? 1 : state.currentPage + 1;
    final limitValue = state.limit;
    final result = await service.getAttendances(pageValue, limitValue);
    // update state
    result.when(
      (success) {
        state = state.copyWith(
          isLoading: false,
          isPageLoading: false,
          attendanceList: refresh
              ? success.data
              : [...state.attendanceList, ...success.data],
          currentPage: pageValue,
          totalPages: success.page.totalPages,
          limit: success.page.limit,
          total: success.page.total,
        );
      },
      (error) {
        state = state.copyWith(
          isLoading: false,
          isPageLoading: false,
          errorMsg: error.message,
        );
      },
    );
  }

  int getCurrentPage() {
    return state.currentPage;
  }

  int getTotalPages() {
    return state.totalPages;
  }
}
