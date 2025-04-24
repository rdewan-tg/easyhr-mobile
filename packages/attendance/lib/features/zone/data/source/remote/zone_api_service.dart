import 'package:attendance/features/zone/data/dto/zone_response.dart';
import 'package:core/data/remote/endpoint.dart';
import 'package:core/data/remote/network_service.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'zone_api_service.g.dart';

final zoneApiProvider = Provider.autoDispose<ZoneApiService>((ref) {
  return ZoneApiService(ref.watch(networkServiceProvider));
});

@RestApi(parser: Parser.FlutterCompute)
abstract class ZoneApiService {
  factory ZoneApiService(Dio _dio) => _ZoneApiService(_dio);

  @GET(getZonesEndPoint)
  Future<ZoneReponse> getZones();
}
