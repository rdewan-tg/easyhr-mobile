

import 'package:attendance/features/map/data/dto/add_attendance_response.dart';
import 'package:attendance/features/map/data/dto/attendance_response.dart';
import 'package:attendance/features/map/data/repository/iattendance_repository.dart';
import 'package:attendance/features/map/data/source/remote/attendance_api_service.dart';
import 'package:attendance/features/map/domain/model/create_attendance_model.dart';
import 'package:common/common.dart';
import 'package:common/exception/failure.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final attendanceRepositoryProvider = Provider<IAttendanceRepository>((ref) {
  return AttendanceRepository(ref.watch(attendanceApiProvider));
});

final class AttendanceRepository with DioExceptionMapper implements IAttendanceRepository {
  final AttendanceApiService _attendanceApiService;

  AttendanceRepository(this._attendanceApiService);

  @override
  Future<AddAttendanceResponse> addAttendance(CreateAttendanceModel data) async {
    try {
      return await _attendanceApiService.addAttendance(
        file: data.file,
        address: data.address,
        latitude: data.latitude,
        longitude: data.longitude,
        zone: data.zone,
        status: data.status,
        transDay: data.transDay,
        transMonth: data.transMonth,
        transYear: data.transYear,
        date: data.date,
      );
    } on DioException catch (e,s) {
      throw mapDioExceptionToFailure(e, s);
    } catch (e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    }
  }

  @override
  Future<AttendanceResponse> getAttendance() async {
    try {
      return await _attendanceApiService.getAttendance();
    } on DioException catch (e,s) {
      throw mapDioExceptionToFailure(e, s);
    } catch (e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    }
  }
  
}