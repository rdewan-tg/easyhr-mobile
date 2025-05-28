import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';

@freezed
abstract class Notification with _$Notification {
  factory Notification({
    required int id,
    required String title,
    required String content,
    String? image,
    String? link,
    required bool isRead,
    String? readAt,
    required String dateTimeDifferance,
    required String createdAt,
  }) = _Notification;
}
