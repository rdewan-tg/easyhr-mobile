import 'package:attendance/features/attendance/domain/model/attendance_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_state.freezed.dart';

@freezed
class AttendanceState with _$AttendanceState {
  factory AttendanceState({
    @Default(false) bool isLoading,
    @Default(false) bool isPageLoading,
    @Default([]) List<AttendanceModel> attendanceList,
    @Default(0) int currentPage,
    @Default(0) int totalPages,
    @Default(20) int limit,
    @Default(0) int total,
    String? errorMsg,
  }) = _AttendanceState;
}
