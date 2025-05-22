import 'package:core/data/local/db/dao/notification_schedule_dao.dart';
import 'package:core/data/local/db/dao/setting_dao.dart';
import 'package:core/data/local/db/entity/setting_entity.dart';
import 'package:core/data/local/db/entity/notification_schedule_entity.dart';
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_database.g.dart';

@Riverpod(keepAlive: true)
AppDatabase appDatabase(Ref ref) => AppDatabase();

@DriftDatabase(
  tables: [
    SettingEntity,
    NotificationScheduleEntity,
  ],
  daos: [
    SettingDao,
    NotificationScheduleDao,
  ],
)
class AppDatabase extends _$AppDatabase {
  // After generating code, this class needs to define a `schemaVersion` getter
  // and a constructor telling drift where the database should be stored.
  // These are described in the getting started guide: https://drift.simonbinder.eu/setup/
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    // `driftDatabase` from `package:drift_flutter` stores the database in
    return driftDatabase(name: 'easy_hr');
  }

  @override
  MigrationStrategy get migration => MigrationStrategy(
        beforeOpen: (details) async {
          if (details.wasCreated) {
            // This database is being created for the first time.
          }
          if (details.hadUpgrade) {
            // This database was upgraded from a previous version.
          }
          //  sqlite3, foreign key references aren't enabled by default.
          // To enable them, run:
          await customStatement('PRAGMA foreign_keys = ON');
        },
        //onCreate: (migrator) {},
        // onUpgrade: stepByStep(
        //   from1To2: (m, schema) async {

        //   },
        // ),
      );
}
