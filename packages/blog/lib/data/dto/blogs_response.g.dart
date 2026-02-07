// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blogs_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BlogsResponse _$BlogsResponseFromJson(Map<String, dynamic> json) =>
    _BlogsResponse(
      status: json['status'] as String,
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => BlogResponseData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$BlogsResponseToJson(_BlogsResponse instance) =>
    <String, dynamic>{'status': instance.status, 'data': instance.data};
