import 'package:drift/drift.dart';

/// Entity to store notification schedule information
class NotificationScheduleEntity extends Table {
  // Unique identifier for the notification
  // When using autoIncrement(), Drift automatically sets this as the primary key
  // so we don't need to override primaryKey
  IntColumn get id => integer().autoIncrement()();

  // Title of the notification
  TextColumn get title => text()();

  // Body/content of the notification
  TextColumn get body => text()();

  // Day of week (1-7, where 1 is Monday, 7 is Sunday)
  IntColumn get dayOfWeek => integer()();

  // Hour of the day (0-23)
  IntColumn get hour => integer()();

  // Minute of the hour (0-59)
  IntColumn get minute => integer()();

  // Unique notification ID used by the notification system
  // Format: 1000*dayOfWeek + 60*hour + minute
  IntColumn get notificationId => integer()();

  // Whether the notification is active or not
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();

  // When the notification was created
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  // When the notification was last updated
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();

  // We don't need to override primaryKey when using autoIncrement()
  // @override
  // Set<Column<Object>> get primaryKey => {id};

  @override
  List<Set<Column<Object>>> get uniqueKeys => [
    {dayOfWeek, hour, minute}, // Ensure no duplicate schedules
  ];
}
