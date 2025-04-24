import 'package:attendance/features/zone/domain/model/zone_model.dart';
import 'package:common/exception/failure.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract interface class IZoneService {
  Future<Result<List<ZoneModel>, Failure>> getZones();
  Future<Result<List<ZoneModel>, Failure>> filterZones(
    LatLng position,
    List<ZoneModel> zones,
  );
}
