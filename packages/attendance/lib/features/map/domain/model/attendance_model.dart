import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_model.freezed.dart';

@freezed
class AttendanceModel with _$AttendanceModel {
  factory AttendanceModel({
    required int id,
    required int userId,
    required String address,
    required String latitude,
    required String longitude,
    required String zone,
    required String image,
    required String status,
    required int transDay,
    required int transMonth,
    required int transYear,
    required String date,
  }) = _AttendanceModel;
}
