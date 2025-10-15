// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zone_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ZoneReponse _$ZoneReponseFromJson(Map<String, dynamic> json) => _ZoneReponse(
  status: json['status'] as String,
  data: (json['data'] as List<dynamic>)
      .map((e) => ZoneData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ZoneReponseToJson(_ZoneReponse instance) =>
    <String, dynamic>{'status': instance.status, 'data': instance.data};

_ZoneData _$ZoneDataFromJson(Map<String, dynamic> json) => _ZoneData(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  description: json['description'] as String?,
  latitude: _doubleFromString(json['latitude'] as String),
  longitude: _doubleFromString(json['longitude'] as String),
  isActive: json['isActive'] as bool,
  version: (json['version'] as num).toInt(),
  companyId: (json['companyId'] as num).toInt(),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$ZoneDataToJson(_ZoneData instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'isActive': instance.isActive,
  'version': instance.version,
  'companyId': instance.companyId,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};
