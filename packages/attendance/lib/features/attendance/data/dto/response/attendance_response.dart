import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:common/common.dart';

part 'attendance_response.freezed.dart';
part 'attendance_response.g.dart';

@freezed
class AttendanceResponse with _$AttendanceResponse {
  const factory AttendanceResponse({
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'data') @Default([]) List<AttendanceData> data,
    @JsonKey(name: 'page') required AttendancePagination page,
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
    @JsonKey(name: 'image') String? image,
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

@freezed
class AttendancePagination with _$AttendancePagination {
  const factory AttendancePagination({
    @JsonKey(name: 'currentPage') @Default(1) int currentPage,
    @JsonKey(name: 'totalPages') @Default(1) int totalPages,
    @JsonKey(name: 'limit') @Default(0) int limit,
    @JsonKey(name: 'total') @Default(0) int total,
  }) = _AttendancePagination;

  factory AttendancePagination.fromJson(Map<String, dynamic> json) =>
      _$AttendancePaginationFromJson(json);
}
