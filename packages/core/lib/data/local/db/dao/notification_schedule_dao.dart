import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:core/data/local/db/entity/notification_schedule_entity.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'notification_schedule_dao.g.dart';

final notificationScheduleDaoProvider =
    Provider<NotificationScheduleDao>((ref) {
  return NotificationScheduleDao(ref.watch(appDatabaseProvider));
});

@DriftAccessor(tables: [NotificationScheduleEntity])
class NotificationScheduleDao extends DatabaseAccessor<AppDatabase>
    with _$NotificationScheduleDaoMixin {
  NotificationScheduleDao(super.db);

  /// Insert a new notification schedule or update if it already exists
  Future<int> insertOrUpdateSchedule(
    NotificationScheduleEntityCompanion schedule,
  ) async {
    try {
      return await into(notificationScheduleEntity)
          .insertOnConflictUpdate(schedule);
    } catch (e, stackTrace) {
      throw Failure(
        message: 'Failed to insert or update notification schedule: $e',
        stackTrace: stackTrace,
      );
    }
  }

  /// Get all notification schedules as a stream
  Stream<List<NotificationScheduleEntityData>> watchAllSchedules() {
    final query = select(notificationScheduleEntity);

    // Order by day of week, then hour, then minute
    query.orderBy([
      (tbl) => OrderingTerm(expression: tbl.dayOfWeek, mode: OrderingMode.asc),
      (tbl) => OrderingTerm(expression: tbl.hour, mode: OrderingMode.asc),
      (tbl) => OrderingTerm(expression: tbl.minute, mode: OrderingMode.asc),
    ]);

    return query.watch().handleError((e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    });
  }

  /// Get only active notification schedules as a stream
  Stream<List<NotificationScheduleEntityData>> watchActiveSchedules() {
    final query = select(notificationScheduleEntity)
      ..where((tbl) => tbl.isActive.equals(true));

    // Order by day of week, then hour, then minute
    query.orderBy([
      (tbl) => OrderingTerm(expression: tbl.dayOfWeek, mode: OrderingMode.asc),
      (tbl) => OrderingTerm(expression: tbl.hour, mode: OrderingMode.asc),
      (tbl) => OrderingTerm(expression: tbl.minute, mode: OrderingMode.asc),
    ]);

    return query.watch().handleError((e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    });
  }

  /// Get a notification schedule by ID
  Future<NotificationScheduleEntityData?> getScheduleById(int id) async {
    final query = select(notificationScheduleEntity)
      ..where((tbl) => tbl.id.equals(id));

    return query.getSingleOrNull();
  }

  /// Remove a notification schedule by ID
  Future<int> removeScheduleById(int id) async {
    try {
      return await (delete(notificationScheduleEntity)
            ..where((tbl) => tbl.id.equals(id)))
          .go();
    } catch (e, stackTrace) {
      throw Failure(
        message: 'Failed to remove notification schedule: $e',
        stackTrace: stackTrace,
      );
    }
  }

  /// Remove all notification schedules
  Future<int> removeAllSchedules() async {
    try {
      return await delete(notificationScheduleEntity).go();
    } catch (e, stackTrace) {
      throw Failure(
        message: 'Failed to remove all notification schedules: $e',
        stackTrace: stackTrace,
      );
    }
  }

  /// Update the active status of a notification schedule
  Future<bool> updateScheduleStatus(int id, bool isActive) async {
    try {
      final rowsAffected = await (update(notificationScheduleEntity)
            ..where((tbl) => tbl.id.equals(id)))
          .write(
        NotificationScheduleEntityCompanion(
          isActive: Value(isActive),
          updatedAt: Value(DateTime.now()),
        ),
      );

      return rowsAffected > 0;
    } catch (e, stackTrace) {
      throw Failure(
        message: 'Failed to update notification schedule status: $e',
        stackTrace: stackTrace,
      );
    }
  }

  /// Get notification schedules for a specific day of the week
  Future<List<NotificationScheduleEntityData>> getSchedulesForDay(
    int dayOfWeek,
  ) async {
    final query = select(notificationScheduleEntity)
      ..where(
        (tbl) => tbl.dayOfWeek.equals(dayOfWeek) & tbl.isActive.equals(true),
      )
      ..orderBy([
        (tbl) => OrderingTerm(expression: tbl.hour, mode: OrderingMode.asc),
        (tbl) => OrderingTerm(expression: tbl.minute, mode: OrderingMode.asc),
      ]);

    return query.get();
  }
}
