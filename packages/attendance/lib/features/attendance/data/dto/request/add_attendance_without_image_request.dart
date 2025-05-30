import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_attendance_without_image_request.freezed.dart';
part 'add_attendance_without_image_request.g.dart';

@freezed
class AddAttendanceWithoutImageRequest with _$AddAttendanceWithoutImageRequest {
  factory AddAttendanceWithoutImageRequest({
    @JsonKey(name: "address") required String address,
    @JsonKey(name: "latitude") required double latitude,
    @JsonKey(name: "longitude") required double longitude,
    @JsonKey(name: "zone") required String zone,
    @JsonKey(name: "status") required AttendanceStatus status,
    @JsonKey(name: "transDay") required int transDay,
    @JsonKey(name: "transMonth") required int transMonth,
    @JsonKey(name: "transYear") required int transYear,
    @JsonKey(name: "date") required String date,
  }) = _AddAttendanceWithoutImageRequest;

  factory AddAttendanceWithoutImageRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AddAttendanceWithoutImageRequestFromJson(json);
}
