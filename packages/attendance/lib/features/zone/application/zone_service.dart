import 'dart:isolate';

import 'package:attendance/features/zone/application/izone_service.dart';
import 'package:attendance/features/zone/data/dto/zone_response.dart';
import 'package:attendance/features/zone/data/repository/izone_repository.dart';
import 'package:attendance/features/zone/data/repository/zone_repository.dart';
import 'package:attendance/features/zone/domain/model/zone_model.dart';
import 'package:common/exception/failure.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

final zoneServiceProvider = Provider.autoDispose<IZoneService>((ref) {
  return ZoneService(ref.watch(zoneRepositoryProvider));
});

final class ZoneService implements IZoneService {
  final IZoneRepository _repository;

  ZoneService(this._repository);

  @override
  Future<Result<List<ZoneModel>, Failure>> getZones() async {
    try {
      final response = await _repository.getZones();
      final result = await Isolate.run(() => _mapToZoneModel(response.data));
      return Success(result);
    } on Failure catch (e) {
      return Error(e);
    }
  }

  @override
  Future<Result<List<ZoneModel>, Failure>> filterZones(
    LatLng position,
    List<ZoneModel> zones,
  ) async {
    try {
      // Get all settings from local storage
      final settings = await _repository.getAllSettings();
      // extract gps radius from setting
      final radius = double.parse(settings['gpsRadius'] ?? '0.0');
      // Filter stores within radius
      final filtered = await Isolate.run(
        () => _filterZones(position, radius, zones),
      );
      return Success(filtered);
    } on Failure catch (e) {
      return Error(e);
    }
  }
}

// top level function for isolate - filter zones
List<ZoneModel> _filterZones(
  LatLng position,
  double radius,
  List<ZoneModel> zones,
) {
  try {
    // Filter stores within radius
    final filtered = zones.where((e) {
      final distanceInMeter = Geolocator.distanceBetween(
        position.latitude,
        position.longitude,
        e.latitude,
        e.longitude,
      );
      return distanceInMeter <= radius;
    }).toList();

    // Sort by nearest
    filtered.sort((a, b) {
      final distanceA = Geolocator.distanceBetween(
        position.latitude,
        position.longitude,
        a.latitude,
        a.longitude,
      );

      final distanceB = Geolocator.distanceBetween(
        position.latitude,
        position.longitude,
        b.latitude,
        b.longitude,
      );
      return distanceA.compareTo(distanceB);
    });

    return filtered;
  } catch (e, s) {
    throw Failure(message: e.toString(), stackTrace: s);
  }
}

// top level function for isolate - map to zone model
List<ZoneModel> _mapToZoneModel(List<ZoneData> zones) {
  return zones
      .map(
        (zone) => ZoneModel(
          id: zone.id,
          name: zone.name,
          description: zone.description,
          latitude: zone.latitude,
          longitude: zone.longitude,
          isActive: zone.isActive,
          version: zone.version,
        ),
      )
      .toList();
}
