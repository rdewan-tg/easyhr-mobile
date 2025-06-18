import 'package:attendance/features/attendance/data/dto/response/last_attendance_state_response.dart';
import 'package:attendance/features/attendance/data/repository/iattendance_repository.dart';
import 'package:attendance/features/attendance/data/source/remote/attendance_api_service.dart';
import 'package:attendance/features/attendance/data/source/local/ilocal_storage.dart';
import 'package:attendance/features/attendance/data/source/local/local_storage.dart';
import 'package:common/common.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:common/exception/failure.dart';
import 'package:attendance/features/attendance/data/dto/response/add_attendance_response.dart';
import 'package:attendance/features/attendance/data/dto/response/attendance_response.dart';
import 'package:attendance/features/attendance/data/dto/request/add_attendance_without_image_request.dart';
import 'package:attendance/features/attendance/domain/model/create_attendance_model.dart';

final attendanceRepositoryProvider = Provider<IAttendanceRepository>((ref) {
  return AttendanceRepository(
    ref.watch(attendanceApiProvider),
    ref.watch(localStorageProvider),
  );
});

final class AttendanceRepository
    with DioExceptionMapper
    implements IAttendanceRepository {
  final AttendanceApiService _attendanceApiService;
  final ILocalStorage _localStorage;

  AttendanceRepository(this._attendanceApiService, this._localStorage);

  @override
  Future<AddAttendanceResponse> addAttendance(
    CreateAttendanceModel data,
  ) async {
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
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    } catch (e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    }
  }

  @override
  Future<AddAttendanceResponse> addAttendanceWithoutImage(
    AddAttendanceWithoutImageRequest data,
  ) async {
    try {
      return await _attendanceApiService.addAttendanceWithoutImage(data);
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    } catch (e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    }
  }

  @override
  Future<AttendanceResponse> getAttendance(int page, int limit) async {
    try {
      return await _attendanceApiService.getAttendance(page, limit);
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    } catch (e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    }
  }

  @override
  Future<LastAttendanceStateResponse> getLastAttendanceState() async {
    try {
      final response = await _attendanceApiService.getLastAttendanceState();
      return response;
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    } catch (e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    }
  }

  @override
  Future<void> setAttendanceStatus(String status) async {
    try {
      await _localStorage.setAttendanceStatus(status);
    } catch (e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    }
  }

  @override
  Future<String?> getAttendanceStatus() async {
    try {
      return await _localStorage.getAttendanceStatus();
    } catch (e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    }
  }

  @override
  Future<int> getScheduleTime() async {
    try {
      return await _localStorage.getScheduleTime();
    } catch (e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    }
  }
}
