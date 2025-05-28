import 'package:notification/data/dto/notifications_response.dart';
import 'package:notification/data/dto/notification_read_response.dart';

abstract interface class INotificationRepository {
  Future<NotificationsResponse> getNotifications();
  Future<NotificationReadResponse> markAsRead(int id);
  Future<Map<String, String>> getAllSettings();
}
