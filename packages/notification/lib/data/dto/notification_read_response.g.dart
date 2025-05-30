// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_read_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationReadResponseImpl _$$NotificationReadResponseImplFromJson(
  Map<String, dynamic> json,
) =>
    _$NotificationReadResponseImpl(
      status: json['status'] as String,
      data: NotificationReadItem.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NotificationReadResponseImplToJson(
  _$NotificationReadResponseImpl instance,
) =>
    <String, dynamic>{'status': instance.status, 'data': instance.data};

_$NotificationReadItemImpl _$$NotificationReadItemImplFromJson(
  Map<String, dynamic> json,
) =>
    _$NotificationReadItemImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      notificationId: (json['notificationId'] as num).toInt(),
      isRead: json['isRead'] as bool,
      readAt: json['readAt'] as String,
    );

Map<String, dynamic> _$$NotificationReadItemImplToJson(
  _$NotificationReadItemImpl instance,
) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'notificationId': instance.notificationId,
      'isRead': instance.isRead,
      'readAt': instance.readAt,
    };
