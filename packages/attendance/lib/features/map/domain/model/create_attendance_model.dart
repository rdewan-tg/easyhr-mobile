
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:common/common.dart';

part 'create_attendance_model.freezed.dart';

@freezed
class CreateAttendanceModel with _$CreateAttendanceModel {

  factory CreateAttendanceModel({
    required File file,
    required String address,
    required double latitude,
    required double longitude,
    required String zone,
    required AttendanceStatus status,
    required int transDay,
    required int transMonth,
    required int transYear,
    required String date,

  }) = _CreateAttendanceModel;


}