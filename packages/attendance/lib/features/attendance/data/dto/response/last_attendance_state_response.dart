import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_attendance_state_response.freezed.dart';
part 'last_attendance_state_response.g.dart';

@freezed
abstract class LastAttendanceStateResponse with _$LastAttendanceStateResponse {
  const factory LastAttendanceStateResponse({
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "data") LastAttendanceStateData? data,
  }) = _LastAttendanceStateResponse;

  factory LastAttendanceStateResponse.fromJson(Map<String, dynamic> json) =>
      _$LastAttendanceStateResponseFromJson(json);
}

@freezed
class LastAttendanceStateData with _$LastAttendanceStateData {
  const factory LastAttendanceStateData({
    @JsonKey(name: 'status') required AttendanceStatus status,
  }) = _LastAttendanceStateData;

  factory LastAttendanceStateData.fromJson(Map<String, dynamic> json) =>
      _$LastAttendanceStateDataFromJson(json);
}
