import 'dart:async';

import 'package:attendance/features/attendance/application/attendance_service.dart';
import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:core/data/local/db/app_database.dart';
import 'package:core/data/local/secure_storage/secure_storage.dart';
import 'package:core/data/local/secure_storage/secure_storage_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:setting/presentation/controller/setting_controller.dart';
import 'package:timezone/data/latest.dart' as tz_latest;
import 'package:timezone/timezone.dart' as tz;

part 'start_up_provider.g.dart';

@Riverpod(keepAlive: true)
Future<void> startUp(Ref ref, {required Flavor flavor}) async {
  ref.onDispose(() {});

  // Set the flavor state
  // ignore: avoid_manual_providers_as_generated_provider_dependency
  ref.read(flavorProvider.notifier).state = flavor;

  // start trace
  // initialize database
  ref.read(appDatabaseProvider);
  // Setup Logger
  // ignore: avoid_manual_providers_as_generated_provider_dependency
  ref.read(appLoggerProvider);

  // get access token
  final accessToken = await ref
      // ignore: avoid_manual_providers_as_generated_provider_dependency
      .read(secureStorageProvider)
      .read(accessTokenKey);
  if (accessToken != null) {
    // get the last attendance state from api and store it in database
    // ignore: avoid_manual_providers_as_generated_provider_dependency
    await ref.read(attendanceServiceProvider).getLastAttendanceState();
  }

  // first run
  final isFirstRun =
      await ref.read(settingControllerProvider.notifier).getFirstRun();
  debugPrint("isFirstRun: $isFirstRun");
  if (isFirstRun) {
    await ref.read(settingControllerProvider.notifier).setFirstRun();
  }

  // get time zone
  await ref.read(settingControllerProvider.notifier).getAllSettings();
  final timeZone = ref.read(settingControllerProvider.notifier).getTimeZone();

  // initialize Time Zone database from latest
  tz_latest.initializeTimeZones();
  final location = tz.getLocation(timeZone ?? 'Asia/Singapore');
  tz.setLocalLocation(location);

  // stop trace
}
