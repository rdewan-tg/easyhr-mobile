

import 'dart:isolate';

import 'package:attendance/features/map/application/iattendance_service.dart';
import 'package:attendance/features/map/data/dto/attendance_response.dart';
import 'package:attendance/features/map/data/repository/attendance_repository.dart';
import 'package:attendance/features/map/data/repository/iattendance_repository.dart';
import 'package:attendance/features/map/domain/model/attendance_model.dart';
import 'package:attendance/features/map/domain/model/create_attendance_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:common/exception/failure.dart';
import 'package:common/common.dart';

final attendanceServiceProvider = Provider<IAttendanceService>((ref) {
  return AttendanceService(ref.watch(attendanceRepositoryProvider));
});

final class AttendanceService implements IAttendanceService{
  final IAttendanceRepository _attendanceRepository;

  AttendanceService(this._attendanceRepository);

  @override
  Future<Result<bool, Failure>> addAttendance(CreateAttendanceModel data) async {
    try {
      await _attendanceRepository.addAttendance(data);
      return const Success(true);
    } on Failure catch (e) {
      return Error(e);
    } catch (e,s) {
      return Error(Failure(message: e.toString(), stackTrace: s));
    }
    
  }

  @override
  Future<Result<List<AttendanceModel>, Failure>> getAttendanceStatus() async {
    try {
      // call the api here
      final response = await _attendanceRepository.getAttendance();
      // map the response data
      final result = await Isolate.run(() => _mapToAttendanceModel(response.data));
      // return the formated model
      return Success(result);
    } on Failure catch (e) {
      return Error(e);
    } catch (e,s) {
      return Error(Failure(message: e.toString(), stackTrace: s));
    }
  }

}

List<AttendanceModel> _mapToAttendanceModel(List<AttendanceData> data) {
  return data.map((e) {
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
}