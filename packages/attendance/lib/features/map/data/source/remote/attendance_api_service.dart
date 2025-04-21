import 'dart:io';
import 'package:attendance/features/map/data/dto/add_attendance_response.dart';
import 'package:attendance/features/map/data/dto/attendance_response.dart';
import 'package:common/common.dart';
import 'package:core/data/remote/endpoint.dart';
import 'package:core/data/remote/network_service.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'attendance_api_service.g.dart';

final attendanceApiProvider = Provider<AttendanceApiService>((ref) {
  return AttendanceApiService(ref.watch(networkServiceProvider));
});

@RestApi()
abstract class AttendanceApiService {
  factory AttendanceApiService(Dio _dio) => _AttendanceApiService(_dio);

  @POST(createAttendanceEndPoint)
  @MultiPart()
  Future<AddAttendanceResponse> addAttendance({
    @Part(name: "file", contentType: 'image/*') required File file,
    @Part(name: "address") required String address,
    @Part(name: "latitude") required double latitude,
    @Part(name: "longitude") required double longitude,
    @Part(name: "zone") required String zone,
    @Part(name: "status") required AttendanceStatus status,
    @Part(name: "transDay") required int transDay,
    @Part(name: "transMonth") required int transMonth,
    @Part(name: "transYear") required int transYear,
    @Part(name: "date") required String date,
  });

  @GET(getAttendanceEndPoint)
  Future<AttendanceResponse> getAttendance();
}