import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_read_response.freezed.dart';
part 'notification_read_response.g.dart';

@freezed
class NotificationReadResponse with _$NotificationReadResponse {
  const factory NotificationReadResponse({
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'data') required NotificationReadItem data,
  }) = _NotificationReadResponse;

  factory NotificationReadResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationReadResponseFromJson(json);
}

@freezed
class NotificationReadItem with _$NotificationReadItem {
  const factory NotificationReadItem({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'userId') required int userId,
    @JsonKey(name: 'notificationId') required int notificationId,
    @JsonKey(name: 'isRead') required bool isRead,
    @JsonKey(name: 'readAt') required String readAt,
  }) = _NotificationReadItem;

  factory NotificationReadItem.fromJson(Map<String, dynamic> json) =>
      _$NotificationReadItemFromJson(json);
}
