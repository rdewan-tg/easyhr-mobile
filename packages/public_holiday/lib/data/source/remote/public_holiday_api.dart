import 'package:core/data/remote/endpoint.dart';
import 'package:core/data/remote/network_service.dart';
import 'package:public_holiday/data/dto/public_holiday_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'public_holiday_api.g.dart';

final publicHolidayApiProvider = Provider.autoDispose<PublicHolidayApi>((ref) {
  final dio = ref.watch(networkServiceProvider);

  return PublicHolidayApi(dio);
});

@RestApi()
abstract class PublicHolidayApi {
  factory PublicHolidayApi(Dio dio) => _PublicHolidayApi(dio);

  @GET(getPublicHolidayEndPoint)
  Future<PublicHolidayResponse> getPublicHoliday();
}
