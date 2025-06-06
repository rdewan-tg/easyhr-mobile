import 'package:core/data/remote/network_service.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod/riverpod.dart';
import 'package:setting/data/dto/company_setting_response.dart';
import 'package:setting/data/dto/device_setting.dart';
import 'package:flutter/foundation.dart';

part 'setting_api.g.dart';

final settingApiProvider = Provider<SettingApi>((ref) {
  final dio = ref.watch(networkServiceProvider);

  return SettingApi(dio);
});

@RestApi(parser: Parser.FlutterCompute)
abstract class SettingApi {
  factory SettingApi(Dio dio) => _SettingApi(dio);

  @GET("/setting/device/{deviceId}")
  Future<DeviceSettingResponse> findByDeviceId(@Path() String deviceId);

  @GET("/v1/company-setting")
  Future<CompanySettingResponse> getCompanySetting();
}
