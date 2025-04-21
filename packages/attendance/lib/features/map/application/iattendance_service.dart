

import 'package:attendance/features/map/domain/model/attendance_model.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:common/exception/failure.dart';
import 'package:attendance/features/map/domain/model/create_attendance_model.dart';
abstract interface class IAttendanceService {

  Future<Result<bool, Failure>> addAttendance(CreateAttendanceModel data);

  Future<Result<List<AttendanceModel>, Failure>> getAttendanceStatus();
}