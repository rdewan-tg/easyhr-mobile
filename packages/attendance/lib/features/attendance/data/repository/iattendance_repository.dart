import 'package:attendance/features/attendance/data/dto/response/add_attendance_response.dart';
import 'package:attendance/features/attendance/data/dto/response/attendance_response.dart';
import 'package:attendance/features/attendance/data/dto/response/last_attendance_state_response.dart';
import 'package:attendance/features/attendance/domain/model/create_attendance_model.dart';

abstract interface class IAttendanceRepository {
  Future<AddAttendanceResponse> addAttendance(CreateAttendanceModel data);

  Future<AttendanceResponse> getAttendance();

  Future<LastAttendanceStateResponse> getLastAttendanceState();

  Future<void> setAttendanceStatus(String status);

  Future<String?> getAttendanceStatus();
}
