import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class ISettingService {
  Future<Result<bool, Failure>> getDeviceSetting(String deviceId);

  Future<void> getCompanySetting();

  Stream<String> watchThemeMode();

  Stream<String> watchLanguage();

  Future<Result<bool, Failure>> writeTheme(String key, String value);

  Future<Result<bool, Failure>> writeLanguage(String key, String value);

  Future<void> clearToken();

  Future<Map<String, String>> getAllSetting();

  Future<bool> getFirstRun();

  Future<void> setFirstRun();

  Future<void> setConsentStatement(bool value);

  Future<bool> getConsentStatement();

  Future<Result<bool, Failure>> setScheduleTime(String time);

  Future<Result<int, Failure>> getScheduleTime();

  Future<Result<bool, Failure>> removeNotificationSchedule(int id);

  Future<Result<bool, Failure>> removeAllNotificationSchedule();

  Stream<List<NotificationScheduleEntityData>> watchAllNotificationSchedule();

  Future<Result<bool, Failure>> upsertNotificationSchedule(
    NotificationScheduleEntityCompanion schedule,
  );

  Future<Result<bool, Failure>> updateNotificationScheduleStatus(
    int id,
    bool isActive,
  );
}
