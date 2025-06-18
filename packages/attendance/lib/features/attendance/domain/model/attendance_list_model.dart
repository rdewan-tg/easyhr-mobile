import 'package:attendance/features/attendance/domain/model/attendance_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:common/dto/pagination/page.dart';

part 'attendance_list_model.freezed.dart';

@freezed
class AttendanceListModel with _$AttendanceListModel {
  factory AttendanceListModel({
    @Default([]) List<AttendanceModel> data,
    required Page page,
  }) = _AttendanceListModel;
}
