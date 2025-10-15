import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_notification_message.freezed.dart';

@freezed
abstract class LocalNotificationMessage with _$LocalNotificationMessage {
  const factory LocalNotificationMessage({
    required int id,
    String? title,
    String? body,
    String? imageUrl,
    String? payload,
  }) = _LocalNotificationMessage;
}
