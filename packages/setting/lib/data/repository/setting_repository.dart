// ignore_for_file: avoid_manual_providers_as_generated_provider_dependency
import 'package:core/data/local/db/app_database.dart';
import 'package:core/data/local/db/dao/setting_dao.dart';
import 'package:setting/data/dto/company_setting_response.dart';
import 'package:setting/data/dto/device_setting.dart';
import 'package:setting/data/repository/isetting_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:common/common.dart';
import 'package:common/exception/failure.dart';
import 'package:dio/dio.dart';
import 'package:setting/data/source/local/inotification_schedule_storage.dart';
import 'package:setting/data/source/local/isetting_storage.dart';
import 'package:setting/data/source/local/notification_schedule_storage.dart';
import 'package:setting/data/source/local/setting_storage.dart';
import 'package:setting/data/source/remote/setting_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'setting_repository.g.dart';

@Riverpod(keepAlive: true)
ISettingRepository settingRepository(Ref ref) {
  final settingApi = ref.watch(settingApiProvider);
  final settingDao = ref.watch(settingDaoProvider);
  final settingStorage = ref.watch(settingStorageProvider);
  final notificationScheduleStorage = ref.watch(
    notificationScheduleStorageProvider,
  );

  return SettingRepositroy(
    settingApi,
    settingDao,
    settingStorage,
    notificationScheduleStorage,
  );
}

final class SettingRepositroy
    with DioExceptionMapper
    implements ISettingRepository {
  final SettingApi _settingApi;
  final SettingDao _settingDao;
  final ISettingStorage _settingStorage;
  final INotificationScheduleStorage _notificationScheduleStorage;

  SettingRepositroy(
    this._settingApi,
    this._settingDao,
    this._settingStorage,
    this._notificationScheduleStorage,
  );

  @override
  Future<DeviceSettingResponse> getDeviceSetting(String deviceId) async {
    try {
      final response = await _settingApi.findByDeviceId(deviceId);

      return response;
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    } catch (e, s) {
      throw Failure(
        message:
            "An unexpected error occurred. Please try again later".hardcoded,
        exception: e as Exception,
        stackTrace: s,
      );
    }
  }

  @override
  Future<CompanySettingResponse> getCompanySetting() async {
    try {
      final response = await _settingApi.getCompanySetting();

      return response;
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    } catch (e, s) {
      throw Failure(
        message:
            "An unexpected error occurred. Please try again later".hardcoded,
        exception: e as Exception,
        stackTrace: s,
      );
    }
  }

  @override
  Stream<String> watchThemeMode() => _settingDao.watchThemeMode();

  @override
  Stream<String> watchLanguage() => _settingDao.watchLanguage();

  @override
  Future<void> writeTheme(String key, String value) async {
    await _settingDao.upsertSetting(key, value);
  }

  @override
  Future<void> writeLanguage(String key, String value) async {
    await _settingDao.upsertSetting(key, value);
  }

  @override
  Future<void> clearToken() async {
    try {
      await _settingStorage.clearToken();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Map<String, String>> getAllSettings() {
    try {
      return _settingDao.getAllSettings();
    } catch (e, stackTrace) {
      // Map unexpected exceptions to Failure
      throw Failure(
        message: 'An unexpected error occurred'.hardcoded,
        exception: e as Exception,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> upsertMultipleSettings(Map<String, String> settings) async {
    try {
      return await _settingStorage.upsertMultipleSettings(settings);
    } catch (e, stackTrace) {
      // Map unexpected exceptions to Failure
      throw Failure(
        message: 'An unexpected error occurred'.hardcoded,
        exception: e as Exception,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<bool> getFirstRun() async {
    return await _settingStorage.getFirstRun();
  }

  @override
  Future<void> setFirstRun() async {
    await _settingStorage.setFirstRun();
  }

  @override
  Future<void> setConsentStatement(bool value) async {
    await _settingStorage.setConsentStatement(value);
  }

  @override
  Future<bool> getConsentStatement() async {
    return await _settingStorage.getConsentStatement();
  }

  @override
  Future<void> setScheduleTime(String time) async {
    await _settingStorage.setScheduleTime(time);
  }

  @override
  Future<int> getScheduleTime() async {
    return await _settingStorage.getScheduleTime();
  }

  @override
  Future<void> removeNotificationSchedule(int id) async {
    try {
      await _notificationScheduleStorage.removeNotificationSchedule(id);
    } catch (e, stackTrace) {
      // Map unexpected exceptions to Failure
      throw Failure(
        message: 'An unexpected error occurred'.hardcoded,
        exception: e as Exception,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> removeAllNotificationSchedule() async {
    try {
      await _notificationScheduleStorage.removeAllNotificationSchedule();
    } catch (e, stackTrace) {
      // Map unexpected exceptions to Failure
      throw Failure(
        message: 'An unexpected error occurred'.hardcoded,
        exception: e as Exception,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Stream<List<NotificationScheduleEntityData>> watchAllNotificationSchedule() {
    try {
      return _notificationScheduleStorage.watchAllNotificationSchedule();
    } catch (e, stackTrace) {
      // Map unexpected exceptions to Failure
      throw Failure(
        message: 'An unexpected error occurred'.hardcoded,
        exception: e as Exception,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> upsertNotificationSchedule(
    NotificationScheduleEntityCompanion schedule,
  ) async {
    try {
      await _notificationScheduleStorage.upsertNotificationSchedule(schedule);
    } catch (e, stackTrace) {
      // Map unexpected exceptions to Failure
      throw Failure(
        message: 'An unexpected error occurred'.hardcoded,
        exception: e as Exception,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> updateNotificationScheduleStatus(int id, bool isActive) async {
    try {
      await _notificationScheduleStorage.updateNotificationScheduleStatus(
        id,
        isActive,
      );
    } catch (e, stackTrace) {
      // Map unexpected exceptions to Failure
      throw Failure(
        message: 'An unexpected error occurred'.hardcoded,
        exception: e as Exception,
        stackTrace: stackTrace,
      );
    }
  }
}
