import 'dart:io';

import 'package:attendance/features/map/application/attendance_service.dart';
import 'package:attendance/features/map/application/map_service.dart';
import 'package:attendance/features/map/domain/model/create_attendance_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:attendance/features/map/presentation/state/map_state.dart';
import 'package:common/common.dart';
import 'package:common/exception/failure.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

final mapControllerProvider =
    AutoDisposeNotifierProvider<MapController, MapState>(MapController.new);

class MapController extends AutoDisposeNotifier<MapState> {
  @override
  MapState build() {
    return MapState();
  }

  Future<void> getAttendanceStatus() async {
    try {
      final result = await ref.read(mapServiceProvider).getAttendanceStatus();
      final status =
          result == "checkedIn"
              ? AttendanceStatus.checkedIn
              : result == "checkedOut"
              ? AttendanceStatus.checkedOut
              : AttendanceStatus.checkedOut;
      state = state.copyWith(status: status);
    } on Failure catch (e) {
      state = state.copyWith(errorMsg: e.message);
    } catch (e) {
      state = state.copyWith(errorMsg: e.toString());
    }
  }

  Future<void> addAttendance(Map<String, dynamic> data) async {
    if (data.isEmpty) return;
    state = state.copyWith(isLoading: true, errorMsg: null, isAttendanceAdded: false);
    final file = data["file"] as File;
    final mapService = ref.read(mapServiceProvider);
    final result = await mapService.getAttendanceStatus();
    final status =
        result == "checkedIn"
            ? AttendanceStatus.checkedOut
            : result == "checkedOut"
            ? AttendanceStatus.checkedIn
            : AttendanceStatus.checkedIn;

    final body = CreateAttendanceModel(
      file: file,
      address: state.currentAddress ?? "",
      latitude: state.currentPosition?.latitude ?? 0.0,
      longitude: state.currentPosition?.longitude ?? 0.0,
      zone: state.zone ?? "",
      status: status,
      transDay: int.tryParse(data["transDay"]) ?? 0,
      transMonth: int.tryParse(data["transMonth"]) ?? 0,
      transYear: int.tryParse(data["transYear"]) ?? 0,
      date: data["date"],
    );
    // call the api
    final addAttendanceResult = await ref
        .read(attendanceServiceProvider)
        .addAttendance(body);
    
    // upda the state
    addAttendanceResult.when(
      (success) async {
        // save the status to secure storage
        await mapService.setAttendanceStatus(status.name);
        // set the image path        
        _setImagePath(file.path);
        // update the state
        state = state.copyWith(
          isLoading: false,
          status: status,
          zone: null,
          isAttendanceAdded: success,
        );
      },
      (error) {
        state = state.copyWith(
          imagePath: null,
          errorMsg: error.message, 
          isLoading: false,
        );
      },
    );
  }

  String? getImagePath() => state.imagePath;

  AttendanceStatus? getStatus() => state.status;

  void setZone(String value) {
    state = state.copyWith(zone: value);
  }

  void _setImagePath(String value) {
    state = state.copyWith(imagePath: value);
  }

  void setCurrentPosition(LatLng value) {
    state = state.copyWith(currentPosition: value);
  }

  void setCurrentAddress(String value) {
    state = state.copyWith(currentAddress: value);
  }

  Future<void> setErrorMsg(String? value) async {
    state = state.copyWith(errorMsg: value);
    Future.delayed(
      const Duration(seconds: 3),
      () => state = state.copyWith(errorMsg: null),
    );
  }
}
