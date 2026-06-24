// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BlogResponse _$BlogResponseFromJson(Map<String, dynamic> json) =>
    _BlogResponse(
      status: json['status'] as String,
      data: BlogResponseData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BlogResponseToJson(_BlogResponse instance) =>
    <String, dynamic>{'status': instance.status, 'data': instance.data};

_BlogResponseData _$BlogResponseDataFromJson(Map<String, dynamic> json) =>
    _BlogResponseData(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      content: json['content'] as String,
      image: json['image'] as String?,
      imageUrl: json['imageUrl'] as String?,
      isActive: json['isActive'] as bool,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$BlogResponseDataToJson(_BlogResponseData instance) =>
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
