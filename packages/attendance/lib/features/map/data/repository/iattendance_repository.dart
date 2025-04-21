

import 'package:attendance/features/map/data/dto/add_attendance_response.dart';
import 'package:attendance/features/map/data/dto/attendance_response.dart';
import 'package:attendance/features/map/domain/model/create_attendance_model.dart';

abstract interface class IAttendanceRepository {

  Future<AddAttendanceResponse> addAttendance(CreateAttendanceModel data);

  Future<AttendanceResponse> getAttendance();
}