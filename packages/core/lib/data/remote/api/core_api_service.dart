

import 'package:core/data/remote/dtos/request/set_me_firebase_token_request.dart';
import 'package:core/data/remote/dtos/response/set_me_firebase_token_response.dart';
import 'package:core/data/remote/endpoint.dart';
import 'package:core/data/remote/network_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';


part 'core_api_service.g.dart';

final coreApiServiceProvider = Provider.autoDispose<CoreApiService>((ref) {
  final dio = ref.watch(networkServiceProvider);

  return CoreApiService(dio);
});

@RestApi()
abstract class CoreApiService {
  factory CoreApiService(Dio dio) => _CoreApiService(dio);

  @PATCH(setMeFirebaseDeviceTokenEndPoint)
  Future<SetMeFirebaseTokenResponse> setMeFirebaseDeviceToken(@Body() SetMeFirebaseTokenRequest deviceToken);
}
