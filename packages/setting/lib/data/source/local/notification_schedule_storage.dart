import 'package:core/data/local/db/app_database.dart';
import 'package:core/data/local/db/dao/notification_schedule_dao.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:setting/data/source/local/inotification_schedule_storage.dart';

final notificationScheduleStorageProvider =
    Provider<INotificationScheduleStorage>((ref) {
      final notificationScheduleDao = ref.watch(
        notificationScheduleDaoProvider,
      );

      return NotificationScheduleStorage(notificationScheduleDao);
    });

final class NotificationScheduleStorage
    implements INotificationScheduleStorage {
  final NotificationScheduleDao _notificationScheduleDao;

  NotificationScheduleStorage(this._notificationScheduleDao);

  @override
  Future<void> removeNotificationSchedule(int id) async {
    try {
      await _notificationScheduleDao.removeScheduleById(id);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> removeAllNotificationSchedule() async {
    try {
      await _notificationScheduleDao.removeAllSchedules();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Stream<List<NotificationScheduleEntityData>> watchAllNotificationSchedule() {
    try {
      return _notificationScheduleDao.watchAllSchedules();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> upsertNotificationSchedule(
    NotificationScheduleEntityCompanion schedule,
  ) async {
    try {
      await _notificationScheduleDao.insertOrUpdateSchedule(schedule);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> updateNotificationScheduleStatus(int id, bool isActive) async {
    try {
      await _notificationScheduleDao.updateScheduleStatus(id, isActive);
    } catch (e) {
      rethrow;
    }
  }
}
