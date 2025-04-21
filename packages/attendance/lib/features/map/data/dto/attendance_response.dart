
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:common/common.dart';

part 'attendance_response.freezed.dart';
part 'attendance_response.g.dart';

@freezed
class AttendanceResponse with _$AttendanceResponse {
  const factory AttendanceResponse({
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'data') @Default([]) List<AttendanceData> data,
  }) = _AttendanceResponse;

  factory AttendanceResponse.fromJson(Map<String, dynamic> json) =>
      _$AttendanceResponseFromJson(json);
}

@freezed
class AttendanceData with _$AttendanceData {
  const factory AttendanceData({
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
  }) = _AttendanceData;

  factory AttendanceData.fromJson(Map<String, dynamic> json) =>
      _$AttendanceDataFromJson(json);
}