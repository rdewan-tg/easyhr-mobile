import 'dart:async';

import 'package:core/core.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:flutter/foundation.dart';
import 'package:setting/application/setting_service.dart';
import 'package:setting/presentation/state/setting_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:drift/drift.dart';

part 'setting_controller.g.dart';

@Riverpod(keepAlive: true)
final class SettingController extends _$SettingController {
  StreamSubscription<String>? _themeModeSubscription;
  StreamSubscription<List<NotificationScheduleEntityData>>?
  _notificationScheduleSubscription;

  @override
  SettingState build() {
    // Cancel the subscription when the controller is disposed
    ref.onDispose(() {
      _themeModeSubscription?.cancel();
      _notificationScheduleSubscription?.cancel();
    });

    // Start listening to the theme mode stream when the controller is created
    watchTheme();
    // Start listening to the language mode stream when the controller is created
    watchLanguage();
    // get all settings when the controller is created
    getAllSettings();

    // Return the initial state
    return const SettingState();
  }

  Future<void> writeTheme(String key, String value) async {
    state = state.copyWith(errorMsg: null);
    final service = ref.read(settingServiceProvider);

    final result = await service.writeTheme(key, value);
    result.when(
      (success) {
        debugPrint('success: $success');
      },
      (error) {
        state = state.copyWith(errorMsg: error.message);
      },
    );
  }

  Future<void> writeLanguage(String key, String value) async {
    state = state.copyWith(errorMsg: null);
    final service = ref.read(settingServiceProvider);

    final result = await service.writeLanguage(key, value);
    result.when(
      (success) {
        debugPrint('success: $success');
      },
      (error) {
        state = state.copyWith(errorMsg: error.message);
      },
    );
  }

  Future<void> getDeviceSetting() async {
    state = state.copyWith(errorMsg: null);

    final service = ref.read(settingServiceProvider);

    final result = await service.getDeviceSetting('');
    result.when((success) {}, (error) {
      state = state.copyWith(errorMsg: error.message);
    });
  }

  Future<void> watchTheme() async {
    // Start listening to the theme mode stream
    _themeModeSubscription = ref
        .watch(settingServiceProvider)
        .watchThemeMode()
        .listen(
          (themeMode) {
            state = state.copyWith(themeMode: themeMode);
          },
          onError: (error) {
            state = state.copyWith(errorMsg: error);
          },
        );
  }

  Future<void> watchLanguage() async {
    // Start listening to the language mode stream
    _themeModeSubscription = ref
        .watch(settingServiceProvider)
        .watchLanguage()
        .listen(
          (language) {
            state = state.copyWith(language: language);
          },
          onError: (error) {
            state = state.copyWith(errorMsg: error);
          },
        );
  }

  Future<void> logout() async {
    // call api - logout
    // await ref.read(authServiceProvider).logout();

    // clear token - access token and refresh token
    await ref.read(settingServiceProvider).clearToken();
    // set auth state - false
    // ignore: avoid_manual_providers_as_generated_provider_dependency
    ref.read(goRouterNotifierProvider).isLoggedIn = false;
  }

  Future<void> deleteMyAccount() async {
    // call api - logout
    // await ref.read(authServiceProvider).logout();

    // clear token - access token and refresh token
    await ref.read(settingServiceProvider).clearToken();
    // set auth state - false
    // ignore: avoid_manual_providers_as_generated_provider_dependency
    ref.read(goRouterNotifierProvider).isLoggedIn = false;
  }

  Future<void> getAllSettings() async {
    final result = await ref.read(settingServiceProvider).getAllSetting();

    state = state.copyWith(settings: result);
  }

  Future<void> getCompanySetting() async {
    try {
      state = state.copyWith(isLoading: true, errorMsg: null);
      await ref.read(settingServiceProvider).getCompanySetting();
      await getAllSettings();
    } catch (e) {
      state = state.copyWith(errorMsg: e.toString());
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<bool> getFirstRun() async {
    return await ref.read(settingServiceProvider).getFirstRun();
  }

  Future<void> setFirstRun() async {
    await ref.read(settingServiceProvider).setFirstRun();
  }

  void setConsentStatementState(bool value) {
    ref.read(settingServiceProvider).setConsentStatement(value);
    state = state.copyWith(isConsentAccepted: value);
  }

  Future<void> getConsentStatement() async {
    final result = await ref.read(settingServiceProvider).getConsentStatement();
    state = state.copyWith(isConsentAccepted: result);
  }

  Future<void> setScheduleTime(String time) async {
    state = state.copyWith(
      isLoading: true,
      errorMsg: null,
      isScheduleTimeSet: false,
    );
    final result = await ref.read(settingServiceProvider).setScheduleTime(time);
    result.when(
      (success) {
        state = state.copyWith(isScheduleTimeSet: success, isLoading: false);
      },
      (error) {
        state = state.copyWith(errorMsg: error.message, isLoading: false);
      },
    );
  }

  Future<void> getScheduleTime() async {
    state = state.copyWith(isLoading: true, errorMsg: null);
    final result = await ref.read(settingServiceProvider).getScheduleTime();
    result.when(
      (success) {
        state = state.copyWith(scheduleTime: success, isLoading: false);
      },
      (error) {
        state = state.copyWith(errorMsg: error.message, isLoading: false);
      },
    );
  }

  Future<void> createNotificationSchedule(
    int id,
    String title,
    String body,
    int dayOfWeek,
    int hour,
    int minute,
  ) async {
    state = state.copyWith(isLoading: true, errorMsg: null);
    final result = await ref
        .read(settingServiceProvider)
        .upsertNotificationSchedule(
          NotificationScheduleEntityCompanion(
            notificationId: Value(id),
            title: Value(title),
            body: Value(body),
            dayOfWeek: Value(dayOfWeek),
            hour: Value(hour),
            minute: Value(minute),
          ),
        );
    result.when(
      (success) {
        state = state.copyWith(isLoading: false);
      },
      (error) {
        state = state.copyWith(errorMsg: error.message, isLoading: false);
      },
    );
  }

  Future<void> removeNotificationSchedule(int id) async {
    state = state.copyWith(isLoading: true, errorMsg: null);
    final result = await ref
        .read(settingServiceProvider)
        .removeNotificationSchedule(id);
    result.when(
      (success) {
        state = state.copyWith(
          isNotificationScheduleRemoved: success,
          isLoading: false,
        );
      },
      (error) {
        state = state.copyWith(errorMsg: error.message, isLoading: false);
      },
    );
  }

  Future<void> removeAllNotificationSchedule() async {
    state = state.copyWith(isLoading: true, errorMsg: null);
    final result = await ref
        .read(settingServiceProvider)
        .removeAllNotificationSchedule();
    result.when(
      (success) {
        state = state.copyWith(
          isNotificationScheduleCleared: success,
          isLoading: false,
        );
      },
      (error) {
        state = state.copyWith(errorMsg: error.message, isLoading: false);
      },
    );
  }

  Future<void> getNotificationSchedules() async {
    state = state.copyWith(isLoading: true, errorMsg: null);
    _notificationScheduleSubscription = ref
        .read(settingServiceProvider)
        .watchAllNotificationSchedule()
        .listen(
          (success) {
            state = state.copyWith(
              notificationSchedules: success,
              isLoading: false,
            );
          },
          onError: (error) {
            state = state.copyWith(errorMsg: error.message, isLoading: false);
          },
        );
  }

  Future<void> updateNotificationScheduleStatus(int id, bool isActive) async {
    state = state.copyWith(isLoading: true, errorMsg: null);
    final result = await ref
        .read(settingServiceProvider)
        .updateNotificationScheduleStatus(id, isActive);
    result.when(
      (success) {
        state = state.copyWith(isLoading: false);
      },
      (error) {
        state = state.copyWith(errorMsg: error.message, isLoading: false);
      },
    );
  }

  String? getTimeZone() => state.settings['timeZone'];
}
