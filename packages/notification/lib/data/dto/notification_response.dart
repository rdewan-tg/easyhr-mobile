import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notification/data/dto/notifications_response.dart';

part 'notification_response.freezed.dart';
part 'notification_response.g.dart';

@freezed
class NotificationResponse with _$NotificationResponse {
  const factory NotificationResponse({
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'data') required NotificationItem data,
  }) = _NotificationResponse;

  factory NotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseFromJson(json);
}
