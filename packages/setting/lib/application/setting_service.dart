import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:setting/application/isetting_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:setting/data/repository/isetting_repository.dart';
import 'package:setting/data/repository/setting_repository.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'setting_service.g.dart';

@Riverpod(keepAlive: true)
ISettingService settingService(Ref ref) {
  final settingRepository = ref.watch(settingRepositoryProvider);
  return SettingService(settingRepository);
}

final class SettingService implements ISettingService {
  final ISettingRepository _settingRepository;

  SettingService(this._settingRepository);

  @override
  Future<Result<bool, Failure>> getDeviceSetting(String deviceId) async {
    try {
      await _settingRepository.getDeviceSetting(deviceId);

      return const Success(true);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(
        Failure(
          message: e.toString(),
          exception: e as Exception,
          stackTrace: s,
        ),
      );
    }
  }

  @override
  Future<void> getCompanySetting() async {
    try {
      final response = await _settingRepository.getCompanySetting();
      await _settingRepository.upsertMultipleSettings({
        'companyId': response.data.id.toString(),
        'timeZone': response.data.timeZone,
        'gpsRadius': response.data.gpsRadius.toString(),
        'isZoneEnabled': response.data.isZoneEnabled.toString(),
        'isCameraEnabled': response.data.isCameraEnabled.toString(),
      });
    } on Failure catch (_) {
      rethrow;
    } catch (e, s) {
      throw Failure(
        message: e.toString(),
        exception: e as Exception,
        stackTrace: s,
      );
    }
  }

  @override
  Stream<String> watchThemeMode() {
    return _settingRepository.watchThemeMode();
  }

  @override
  Stream<String> watchLanguage() {
    return _settingRepository.watchLanguage();
  }

  @override
  Future<Result<bool, Failure>> writeTheme(String key, String value) async {
    try {
      await _settingRepository.writeTheme(key, value);

      return const Success(true);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(
        Failure(
          message: e.toString(),
          exception: e as Exception,
          stackTrace: s,
        ),
      );
    }
  }

  @override
  Future<Result<bool, Failure>> writeLanguage(String key, String value) async {
    try {
      await _settingRepository.writeLanguage(key, value);

      return const Success(true);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(
        Failure(
          message: e.toString(),
          exception: e as Exception,
          stackTrace: s,
        ),
      );
    }
  }

  @override
  Future<void> clearToken() async {
    try {
      await _settingRepository.clearToken();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Map<String, String>> getAllSetting() async {
    try {
      return await _settingRepository.getAllSettings();
    } on Failure catch (_) {
      rethrow;
    } catch (e, s) {
      throw Failure(
        message: e.toString(),
        exception: e as Exception,
        stackTrace: s,
      );
    }
  }

  @override
  Future<bool> getFirstRun() async {
    return await _settingRepository.getFirstRun();
  }

  @override
  Future<void> setFirstRun() async {
    await _settingRepository.setFirstRun();
  }

  @override
  Future<void> setConsentStatement(bool value) async {
    await _settingRepository.setConsentStatement(value);
  }

  @override
  Future<bool> getConsentStatement() async {
    return await _settingRepository.getConsentStatement();
  }

  @override
  Future<Result<bool, Failure>> setScheduleTime(String time) async {
    try {
      await _settingRepository.setScheduleTime(time);

      return const Success(true);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(
        Failure(
          message: e.toString(),
          exception: e as Exception,
          stackTrace: s,
        ),
      );
    }
  }

  @override
  Future<Result<int, Failure>> getScheduleTime() async {
    try {
      final result = await _settingRepository.getScheduleTime();

      return Success(result);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(
        Failure(
          message: e.toString(),
          exception: e as Exception,
          stackTrace: s,
        ),
      );
    }
  }

  @override
  Future<Result<bool, Failure>> removeAllNotificationSchedule() async {
    try {
      await _settingRepository.removeAllNotificationSchedule();

      return const Success(true);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(
        Failure(
          message: e.toString(),
          exception: e as Exception,
          stackTrace: s,
        ),
      );
    }
  }

  @override
  Future<Result<bool, Failure>> removeNotificationSchedule(int id) async {
    try {
      await _settingRepository.removeNotificationSchedule(id);

      return const Success(true);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(
        Failure(
          message: e.toString(),
          exception: e as Exception,
          stackTrace: s,
        ),
      );
    }
  }

  @override
  Future<Result<bool, Failure>> upsertNotificationSchedule(
    NotificationScheduleEntityCompanion schedule,
  ) async {
    try {
      await _settingRepository.upsertNotificationSchedule(schedule);

      return const Success(true);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(
        Failure(
          message: e.toString(),
          exception: e as Exception,
          stackTrace: s,
        ),
      );
    }
  }

  @override
  Stream<List<NotificationScheduleEntityData>> watchAllNotificationSchedule() {
    return _settingRepository.watchAllNotificationSchedule();
  }

  @override
  Future<Result<bool, Failure>> updateNotificationScheduleStatus(
    int id,
    bool isActive,
  ) async {
    try {
      await _settingRepository.updateNotificationScheduleStatus(id, isActive);
      return const Success(true);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(
        Failure(
          message: e.toString(),
          exception: e as Exception,
          stackTrace: s,
        ),
      );
    }
  }
}
