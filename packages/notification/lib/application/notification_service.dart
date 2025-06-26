import 'dart:isolate';

import 'package:common/exception/failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:notification/application/inotification_service.dart';
import 'package:notification/data/dto/notifications_response.dart';
import 'package:notification/data/repository/inotification_repository.dart';
import 'package:notification/data/repository/notification_repository.dart';
import 'package:notification/domain/model/notification.dart';
import 'package:timezone/data/latest.dart' as tz_latest;
import 'package:timezone/timezone.dart' as tz;

final notificationServiceProvider = Provider<NotificationService>((ref) {
  return NotificationService(ref.read(notificationRepositoryProvider));
});

final class NotificationService implements INotificationService {
  final INotificationRepository _notificationRepository;

  NotificationService(this._notificationRepository);

  @override
  Future<Result<List<Notification>, Failure>> getNotifications() async {
    try {
      final result = await _notificationRepository.getNotifications();
      final setting = await _notificationRepository.getAllSettings();
      final notifications = await Isolate.run(
        () => _mapNotificationsResponseToNotifications(
          result.data,
          setting['timezone'] ?? 'Asia/Singapore',
        ),
      );
      return Success(notifications);
    } on Failure catch (e) {
      return Error(e);
    }
  }

  @override
  Future<Result<void, Failure>> markAsRead(int id) async {
    try {
      await _notificationRepository.markAsRead(id);
      return const Success(null);
    } on Failure catch (e) {
      return Error(e);
    }
  }
}

List<Notification> _mapNotificationsResponseToNotifications(
  List<NotificationItem> notifications,
  String timeZone,
) {
  // initialize Time Zone database from latest
  tz_latest.initializeTimeZones();
  final location = tz.getLocation(timeZone);
  tz.setLocalLocation(location);

  return notifications
      .map(
        (notification) => Notification(
          id: notification.id,
          title: notification.title,
          content: notification.content,
          image: notification.image,
          link: notification.link,
          isRead: notification.isRead,
          readAt: notification.readAt != null
              ? _currentDateTime(timeZone, notification.readAt!, location)
              : null,
          dateTimeDifferance: _formatTimeDifference(notification.createdAt),
          createdAt: _currentDateTime(
            timeZone,
            notification.createdAt,
            location,
          ),
        ),
      )
      .toList();
}

String _currentDateTime(
  String timeZone,
  String dateTime,
  tz.Location location,
) {
  // get the current date and time
  final now = tz.TZDateTime.parse(location, dateTime);
  // format the date and time
  final formattedDateTime = DateFormat("dd/MM/yyyy").format(now);

  return formattedDateTime;
}

/// Formats a date string into a human-readable time difference (e.g., "2d ago")
String _formatTimeDifference(String dateString) {
  try {
    final date = DateTime.parse(dateString);
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays > 0) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ago';
    } else {
      return 'Just now';
    }
  } catch (e) {
    return dateString;
  }
}
