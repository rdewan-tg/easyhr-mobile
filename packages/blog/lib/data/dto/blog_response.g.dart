// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogResponseImpl _$$BlogResponseImplFromJson(Map<String, dynamic> json) =>
    _$BlogResponseImpl(
      status: json['status'] as String,
      data: BlogResponseData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BlogResponseImplToJson(_$BlogResponseImpl instance) =>
    <String, dynamic>{'status': instance.status, 'data': instance.data};

_$BlogResponseDataImpl _$$BlogResponseDataImplFromJson(
  Map<String, dynamic> json,
) =>
    _$BlogResponseDataImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      content: json['content'] as String,
      image: json['image'] as String?,
      imageUrl: json['imageUrl'] as String?,
      isActive: json['isActive'] as bool,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$BlogResponseDataImplToJson(
  _$BlogResponseDataImpl instance,
) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'image': instance.image,
      'imageUrl': instance.imageUrl,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
