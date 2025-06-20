import 'dart:isolate';
import 'package:attendance/features/attendance/application/iattendance_service.dart';
import 'package:attendance/features/attendance/data/dto/response/attendance_response.dart';
import 'package:attendance/features/attendance/data/repository/iattendance_repository.dart';
import 'package:attendance/features/attendance/domain/model/attendance_list_model.dart';
import 'package:attendance/features/attendance/domain/model/attendance_model.dart';
import 'package:attendance/features/attendance/domain/model/create_attendance_model.dart';
import 'package:common/common.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:common/exception/failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:attendance/features/attendance/data/repository/attendance_repository.dart';
import 'package:attendance/features/attendance/data/dto/request/add_attendance_without_image_request.dart';
import 'package:common/dto/pagination/page.dart';

final attendanceServiceProvider = Provider<IAttendanceService>((ref) {
  return AttendanceService(ref.watch(attendanceRepositoryProvider));
});

final class AttendanceService implements IAttendanceService {
  final IAttendanceRepository _attendanceRepository;

  AttendanceService(this._attendanceRepository);

  @override
  Future<Result<bool, Failure>> addAttendance(
    CreateAttendanceModel data,
  ) async {
    try {
      await _attendanceRepository.addAttendance(data);
      return const Success(true);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(Failure(message: e.toString(), stackTrace: s));
    }
  }

  @override
  Future<Result<bool, Failure>> addAttendanceWithoutImage(
    AddAttendanceWithoutImageRequest data,
  ) async {
    try {
      await _attendanceRepository.addAttendanceWithoutImage(data);
      return const Success(true);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(Failure(message: e.toString(), stackTrace: s));
    }
  }

  @override
  Future<Result<AttendanceListModel, Failure>> getAttendances(
    int page,
    int limit,
  ) async {
    try {
      // call the api here
      final response = await _attendanceRepository.getAttendance(page, limit);
      // map the response data
      final result = await Isolate.run(
        () => _mapToAttendanceListModel(response),
      );
      // return the  model
      return Success(result);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(Failure(message: e.toString(), stackTrace: s));
    }
  }

  @override
  Future<void> getLastAttendanceState() async {
    try {
      final response = await _attendanceRepository.getLastAttendanceState();
      final data = response.data;
      if (data != null) {
        await setAttendanceStatus(data.status.name);
      }
    } on Failure catch (_) {
      rethrow;
    } catch (e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    }
  }

  @override
  Future<void> setAttendanceStatus(String status) async {
    try {
      await _attendanceRepository.setAttendanceStatus(status);
    } on Failure catch (_) {
      rethrow;
    } catch (e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    }
  }

  @override
  Future<String?> getAttendanceStatus() async {
    try {
      return await _attendanceRepository.getAttendanceStatus();
    } on Failure catch (_) {
      rethrow;
    } catch (e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    }
  }

  @override
  Future<int> getScheduleTime() async {
    try {
      return await _attendanceRepository.getScheduleTime();
    } on Failure catch (_) {
      rethrow;
    } catch (e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    }
  }
}

// top level function for isolate
AttendanceListModel _mapToAttendanceListModel(AttendanceResponse response) {
  final data =
      response.data.map((e) {
        return AttendanceModel(
          id: e.id,
          userId: e.userId,
          address: e.address,
          latitude: e.latitude,
          longitude: e.longitude,
          zone: e.zone,
          image: e.image,
          status: e.status == AttendanceStatus.checkedIn ? "IN" : "OUT",
          transDay: e.transDay,
          transMonth: e.transMonth,
          transYear: e.transYear,
          date: e.date,
        );
      }).toList();

  return AttendanceListModel(
    data: data,
    page: Page(
      currentPage: response.page.currentPage,
      totalPages: response.page.totalPages,
      limit: response.page.limit,
      total: response.page.total,
    ),
  );
}
