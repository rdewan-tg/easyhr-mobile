// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_read_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationReadResponse _$NotificationReadResponseFromJson(
  Map<String, dynamic> json,
) => _NotificationReadResponse(
  status: json['status'] as String,
  data: NotificationReadItem.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$NotificationReadResponseToJson(
  _NotificationReadResponse instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};

_NotificationReadItem _$NotificationReadItemFromJson(
  Map<String, dynamic> json,
) => _NotificationReadItem(
  id: (json['id'] as num).toInt(),
  userId: (json['userId'] as num).toInt(),
  notificationId: (json['notificationId'] as num).toInt(),
  isRead: json['isRead'] as bool,
  readAt: json['readAt'] as String,
);

Map<String, dynamic> _$NotificationReadItemToJson(
  _NotificationReadItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'notificationId': instance.notificationId,
  'isRead': instance.isRead,
  'readAt': instance.readAt,
};
