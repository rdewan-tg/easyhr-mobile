import 'package:core/data/local/db/app_database.dart';

abstract interface class INotificationScheduleStorage {
  Future<void> removeNotificationSchedule(int id);

  Future<void> removeAllNotificationSchedule();

  Stream<List<NotificationScheduleEntityData>> watchAllNotificationSchedule();

  Future<void> upsertNotificationSchedule(
    NotificationScheduleEntityCompanion schedule,
  );

  Future<void> updateNotificationScheduleStatus(int id, bool isActive);
}
