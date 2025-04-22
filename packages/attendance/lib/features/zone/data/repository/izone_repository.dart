import 'package:attendance/features/zone/data/dto/zone_response.dart';

abstract interface class IZoneRepository {
  Future<ZoneReponse> getZones();
}
