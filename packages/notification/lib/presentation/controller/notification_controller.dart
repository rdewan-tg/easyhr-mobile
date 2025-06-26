import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notification/application/notification_service.dart';
import 'package:notification/presentation/state/notification_state.dart';

final notificationControllerProvider =
    NotifierProvider<NotificationController, NotificationState>(
      () => NotificationController(),
    );

class NotificationController extends Notifier<NotificationState> {
  @override
  NotificationState build() {
    return NotificationState();
  }

  Future<void> getNotifications() async {
    if (state.isLoading) return;
    state = state.copyWith(isLoading: true, error: null);
    final result = await ref
        .read(notificationServiceProvider)
        .getNotifications();
    result.when(
      (success) {
        state = state.copyWith(
          isLoading: false,
          notifications: success,
          newNotificationCount: success
              .where((notification) => !notification.isRead)
              .length,
        );
      },
      (failure) {
        state = state.copyWith(isLoading: false, error: failure.message);
      },
    );
  }

  Future<void> markAsRead(int id) async {
    state = state.copyWith(isLoading: true, error: null);
    final result = await ref.read(notificationServiceProvider).markAsRead(id);
    result.when(
      (success) {
        // update newNotificationCount - 1
        final newNotificationCount = state.notifications
            .where((notification) => !notification.isRead)
            .length;
        state = state.copyWith(
          isLoading: false,
          notifications: state.notifications.map((notification) {
            if (notification.id == id) {
              return notification.copyWith(isRead: true);
            }
            return notification;
          }).toList(),
          newNotificationCount: newNotificationCount - 1,
        );
      },
      (failure) {
        state = state.copyWith(isLoading: false, error: failure.message);
      },
    );
  }
}
