// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blogs_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogsResponseImpl _$$BlogsResponseImplFromJson(Map<String, dynamic> json) =>
    _$BlogsResponseImpl(
      status: json['status'] as String,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => BlogResponseData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$BlogsResponseImplToJson(_$BlogsResponseImpl instance) =>
    <String, dynamic>{'status': instance.status, 'data': instance.data};
