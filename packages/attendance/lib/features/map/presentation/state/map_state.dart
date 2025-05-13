import 'package:attendance/features/zone/domain/model/zone_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:common/common.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
part 'map_state.freezed.dart';

@freezed
class MapState with _$MapState {
  factory MapState({
    @Default(false) bool isLoading,
    @Default(true) bool isZoneEnabled,
    @Default(false) bool isCameraEnabled,
    @Default(false) bool isAttendanceAdded,
    @Default({}) Map<String, String> settings,
    AttendanceStatus? status,
    LatLng? currentPosition,
    String? imagePath,
    @Default([]) List<ZoneModel> zones,
    @Default([]) List<ZoneModel> currentZones,
    String? currentAddress,
    String? zone,
    String? errorMsg,
  }) = _MapState;
}
