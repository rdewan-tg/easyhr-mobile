// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationResponseImpl _$$NotificationResponseImplFromJson(
  Map<String, dynamic> json,
) =>
    _$NotificationResponseImpl(
      status: json['status'] as String,
      data: NotificationItem.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NotificationResponseImplToJson(
  _$NotificationResponseImpl instance,
) =>
    <String, dynamic>{'status': instance.status, 'data': instance.data};
