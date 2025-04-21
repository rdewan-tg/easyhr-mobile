import 'package:attendance/features/map/domain/model/attendance_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_state.freezed.dart';

@freezed
class AttendanceState with _$AttendanceState {
  factory AttendanceState({
    @Default(false) bool isLoading,
    @Default([]) List<AttendanceModel> attendanceList,
    String? errorMsg,
  }) = _AttendanceState;
}
