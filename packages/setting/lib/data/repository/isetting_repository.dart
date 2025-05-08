import 'package:setting/data/dto/company_setting_response.dart';
import 'package:setting/data/dto/device_setting.dart';

abstract interface class ISettingRepository {
  Future<DeviceSettingResponse> getDeviceSetting(String deviceId);

  Future<CompanySettingResponse> getCompanySetting();

  Future<void> upsertMultipleSettings(Map<String, String> settings);

  Stream<String> watchThemeMode();

  Stream<String> watchLanguage();

  Future<void> writeTheme(String key, String value);

  Future<void> writeLanguage(String key, String value);

  Future<void> clearToken();

  Future<Map<String, String>> getAllSettings();

  Future<bool> getFirstRun();

  Future<void> setFirstRun();
}
