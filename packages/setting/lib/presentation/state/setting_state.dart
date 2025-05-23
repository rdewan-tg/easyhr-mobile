import 'package:core/data/local/db/app_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_state.freezed.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    @Default(false) bool isLoading,
    @Default(false) bool isConsentAccepted,
    @Default(0) int scheduleTime,
    @Default(false) bool isScheduleTimeSet,
    @Default([]) List<NotificationScheduleEntityData> notificationSchedules,
    @Default(false) bool isNotificationScheduleRemoved,
    @Default(false) bool isNotificationScheduleCleared,
    @Default('en') String language,
    @Default('light') String themeMode,
    @Default('Asia/Kolkata') String timeZone,
    @Default({}) Map<String, String> settings,
    @Default(0) int orderRunningNumber,
    String? errorMsg,
  }) = _SettingState;
}
