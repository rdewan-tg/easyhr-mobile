// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationsResponseImpl _$$NotificationsResponseImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationsResponseImpl(
  status: json['status'] as String,
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => NotificationItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$NotificationsResponseImplToJson(
  _$NotificationsResponseImpl instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};

_$NotificationItemImpl _$$NotificationItemImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationItemImpl(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  content: json['content'] as String,
  image: json['image'] as String?,
  link: json['link'] as String?,
  isRead: json['isRead'] as bool,
  readAt: json['readAt'] as String?,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
);

Map<String, dynamic> _$$NotificationItemImplToJson(
  _$NotificationItemImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'content': instance.content,
  'image': instance.image,
  'link': instance.link,
  'isRead': instance.isRead,
  'readAt': instance.readAt,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
};
