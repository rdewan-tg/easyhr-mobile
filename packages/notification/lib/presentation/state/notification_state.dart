import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notification/domain/model/notification.dart';

part 'notification_state.freezed.dart';

@freezed
class NotificationState with _$NotificationState {
  factory NotificationState({
    @Default([]) List<Notification> notifications,
    @Default(false) bool isLoading,
    @Default(0) int newNotificationCount,
    String? error,
  }) = _NotificationState;
}
