// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_schedule_dao.dart';

// ignore_for_file: type=lint
mixin _$NotificationScheduleDaoMixin on DatabaseAccessor<AppDatabase> {
  $NotificationScheduleEntityTable get notificationScheduleEntity =>
      attachedDatabase.notificationScheduleEntity;
  NotificationScheduleDaoManager get managers =>
      NotificationScheduleDaoManager(this);
}

class NotificationScheduleDaoManager {
  final _$NotificationScheduleDaoMixin _db;
  NotificationScheduleDaoManager(this._db);
  $$NotificationScheduleEntityTableTableManager
  get notificationScheduleEntity =>
      $$NotificationScheduleEntityTableTableManager(
        _db.attachedDatabase,
        _db.notificationScheduleEntity,
      );
}
