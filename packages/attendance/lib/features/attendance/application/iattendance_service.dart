import 'package:multiple_result/multiple_result.dart';
import 'package:common/exception/failure.dart';
import 'package:attendance/features/attendance/domain/model/create_attendance_model.dart';
import 'package:attendance/features/attendance/domain/model/attendance_model.dart';

abstract interface class IAttendanceService {
  Future<Result<bool, Failure>> addAttendance(CreateAttendanceModel data);

  Future<Result<List<AttendanceModel>, Failure>> getAttendances();

  Future<void> getLastAttendanceState();

  Future<void> setAttendanceStatus(String status);

  Future<String?> getAttendanceStatus();
}
