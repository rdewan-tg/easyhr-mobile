
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:common/common.dart';

part 'add_attendance_response.freezed.dart';
part 'add_attendance_response.g.dart';

@freezed
class AddAttendanceResponse with _$AddAttendanceResponse {
  const factory AddAttendanceResponse({
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'data') required AddAttendanceData data,
  }) = _AddAttendanceResponse;

  factory AddAttendanceResponse.fromJson(Map<String, dynamic> json) =>
      _$AddAttendanceResponseFromJson(json);
}

@freezed
class AddAttendanceData with _$AddAttendanceData {
  const factory AddAttendanceData({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'userId') required int userId,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'latitude') required String latitude,
    @JsonKey(name: 'longitude') required String longitude,
    @JsonKey(name: 'zone') required String zone,
    @JsonKey(name: 'image') required String image,
    @JsonKey(name: 'status') required AttendanceStatus status,
    @JsonKey(name: 'transDay') required int transDay,
    @JsonKey(name: 'transMonth') required int transMonth,
    @JsonKey(name: 'transYear') required int transYear,
    @JsonKey(name: 'date') required String date,
    @JsonKey(name: 'companyId') required int companyId,
    @JsonKey(name: 'createdAt') required String createdAt,
    @JsonKey(name: 'updatedAt') required String updatedAt,
  }) = _AddAttendanceData;

  factory AddAttendanceData.fromJson(Map<String, dynamic> json) =>
      _$AddAttendanceDataFromJson(json);
}