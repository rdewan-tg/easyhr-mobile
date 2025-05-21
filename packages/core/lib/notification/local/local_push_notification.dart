import 'dart:convert';
import 'dart:io';

import 'package:common/logger/logger_provider.dart';
import 'package:core/notification/local/model/local_notification_message.dart';
import 'package:core/route/app_router.dart';
import 'package:dio/dio.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:go_router/go_router.dart';
import 'package:core/core.dart';
import 'package:timezone/timezone.dart' as tz;

final localPushNotificationProvider = Provider<LocalPushNotification>((ref) {
  final localNotificationsPlugin = ref.watch(flutterLocalNotificationProvider);
  final logger = ref.watch(loggerProvider('LocalPushNotification'));
  final goRouter = ref.watch(goRouterProvider);

  return LocalPushNotification(localNotificationsPlugin, logger, goRouter);
});

class LocalPushNotification {
  final FlutterLocalNotificationsPlugin _localNotificationsPlugin;
  final Logger _logger;
  final GoRouter _goRouter;

  LocalPushNotification(
    this._localNotificationsPlugin,
    this._logger,
    this._goRouter,
  ) {
    _init();
  }

  void _init() async {
    final androidPlugin =
        _localNotificationsPlugin.resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>();

    const initializationSettings = InitializationSettings(
      android: AndroidInitializationSettings('ic_notification'),
      iOS: DarwinInitializationSettings(
        requestAlertPermission: false,
        requestBadgePermission: false,
        requestCriticalPermission: false,
        requestSoundPermission: false,
      ),
    );

    if (Platform.isAndroid) {
      // request notification permission on Android 13 and above
      final isGranted =
          await androidPlugin?.requestNotificationsPermission() ?? false;

      _logger.info('is Android Notification Permission Granted: $isGranted');
    }

    // Creates a notification channel.
    // This method is only applicable to Android versions 8.0 or newer.
    await _localNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(_notificationChannelMax());

    // Initializes the plugin.
    // Call this method on application before using the plugin further.
    await _localNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (details) {
        _logger.info(details.toString());
        _handleMessage(details.payload);
      },
    );
  }

  Future<bool> requestAlarmPermission() async {
    final androidPlugin =
        _localNotificationsPlugin.resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>();
    // Schedulr alaram permission
    // Check if you still have permission from last time you asked (or false if you never asked)
    // Null means you're not on Android
    var hasPermission =
        await androidPlugin?.canScheduleExactNotifications() ?? false;
    if (!hasPermission) {
      // if not granted, request permission
      hasPermission =
          await androidPlugin?.requestExactAlarmsPermission() ?? false;
    }
    return hasPermission;
  }

  ///On Android, notification messages are sent to Notification
  ///Channels which are used to control how a notification is delivered.
  ///The default FCM channel used is hidden from users, however provides a "default" importance level.
  ///Heads up notifications require a "max" importance level.
  void showNotification(LocalNotificationMessage message) async {
    //final String largeIcon = await _base64EncodedImage(message.imageUrl ?? '');
    String? bigPicture;
    // check if the message contains an image
    if (message.imageUrl != null) {
      bigPicture = await _base64EncodedImage(message.imageUrl ?? '');
    }

    await _localNotificationsPlugin.show(
      message.id,
      message.title,
      message.body,
      NotificationDetails(
        android: _androidNotificationDetail(
          bigPicture != null
              ? BigPictureStyleInformation(
                  ByteArrayAndroidBitmap.fromBase64String(bigPicture),
                )
              : null,
        ),
        iOS: const DarwinNotificationDetails(),
      ),
      payload: message.payload,
    );
  }

  // schedulr notification
  void scheduleLocalNotification(
    tz.TZDateTime scheduledDate,
    String title,
    String body,
  ) async {
    // Returns the Android version of the plugin on Android devices, null everywhere else
    final androidPlugin =
        _localNotificationsPlugin.resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>();

    // Check if you still have permission from last time you asked (or false if you never asked)
    // Null means you're not on Android
    var hasPermission =
        await androidPlugin?.canScheduleExactNotifications() ?? false;
    if (!hasPermission) {
      // Request permissions again and update the variable
      hasPermission =
          await androidPlugin?.requestExactAlarmsPermission() ?? false;
    }

    // You may have been denied permissions, so check the return value
    if (hasPermission) {
      await _localNotificationsPlugin.zonedSchedule(
        0,
        title,
        body,
        scheduledDate,
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'easyhr_scheduled_notification_channel_id',
            'EasyHR Scheduled Notification',
            channelDescription:
                'This channel is used by EasyHR for scheduled notifications.',
          ),
        ),
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      );
    }
  }

  void cancelLocalNotification({int id = 0}) async {
    await _localNotificationsPlugin.cancel(id);
  }

  // Asynchronous function that takes a URL as input and returns a base64 encoded image string.
  Future<String> _base64EncodedImage(String url) async {
    final response = await Dio().get<List<int>>(
      url,
      options: Options(responseType: ResponseType.bytes),
    );
    final String base64Data = base64Encode(response.data ?? []);
    return base64Data;
  }

  // Generates Android notification details based on the provided style information.
  AndroidNotificationDetails _androidNotificationDetail(
    StyleInformation? styleInformation,
  ) {
    return AndroidNotificationDetails(
      'easyhr_general_notification_channel_id',
      'EasyHR General Notification',
      channelDescription:
          'This channel is used by EasyHR for general notifications.',
      importance: Importance.max,
      priority: Priority.max,
      channelShowBadge: true,
      styleInformation: styleInformation,
    );
  }

  // Creates and returns an Android notification channel with maximum importance.
  AndroidNotificationChannel _notificationChannelMax() {
    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'easyhr_high_importance_channel_id', // id
      'EasyHR High Importance Notifications', // title
      description:
          'This channel is used by EasyHR for important notifications.', // description
      importance: Importance.max,
    );

    return channel;
  }

  // Handle the given message payload, which is a nullable String.
  // It decodes the payload into a Map and checks if the 'link' key is present.
  // If it is, it retrieves the link and navigates using the _goRouter.
  void _handleMessage(String? payload) {
    final Map<String, dynamic> data =
        jsonDecode(payload ?? '') as Map<String, dynamic>;

    if (data['link'] != null) {
      final String link = data['link'] as String;
      _goRouter.go(link);
    } else {
      _goRouter.go('/');
    }
  }
}
