import 'dart:io';

import 'package:attendance/features/attendance/data/dto/request/add_attendance_without_image_request.dart';
import 'package:attendance/features/attendance/data/dto/response/add_attendance_response.dart';
import 'package:attendance/features/attendance/data/dto/response/attendance_response.dart';
import 'package:common/common.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:attendance/features/attendance/data/dto/response/last_attendance_state_response.dart';
import 'package:core/data/remote/endpoint.dart';
import 'package:core/data/remote/network_service.dart';

part 'attendance_api_service.g.dart';

final attendanceApiProvider = Provider.autoDispose<AttendanceApiService>((ref) {
  return AttendanceApiService(ref.watch(networkServiceProvider));
});

@RestApi()
abstract class AttendanceApiService {
  factory AttendanceApiService(Dio dio) => _AttendanceApiService(dio);

  @GET(getLastAttendanceStateEndPoint)
  Future<LastAttendanceStateResponse> getLastAttendanceState();

  @POST(createAttendanceEndPoint)
  @MultiPart()
  Future<AddAttendanceResponse> addAttendance({
    @Part(name: "file", contentType: 'image/*') File? file,
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

  @POST(createAttendanceEndPointWithoutImage)
  Future<AddAttendanceResponse> addAttendanceWithoutImage(
    @Body() AddAttendanceWithoutImageRequest data,
  );

  @GET(getAttendanceEndPoint)
  Future<AttendanceResponse> getAttendance();
}
