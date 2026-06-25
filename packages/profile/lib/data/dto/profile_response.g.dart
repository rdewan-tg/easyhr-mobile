// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) =>
    _ProfileResponse(
      status: json['status'] as String,
      data: ProfileData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileResponseToJson(_ProfileResponse instance) =>
    <String, dynamic>{'status': instance.status, 'data': instance.data};

_ProfileData _$ProfileDataFromJson(Map<String, dynamic> json) => _ProfileData(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  email: json['email'] as String,
  phoneNumber: json['phoneNumber'] as String?,
  photo: json['photo'] as String?,
  gpsRadius: (json['gpsRadius'] as num).toInt(),
  isZoneEnabled: json['isZoneEnabled'] as bool,
  isCameraEnabled: json['isCameraEnabled'] as bool,
  dashboardPath: json['dashboardPath'] as String,
  isWebLoginEnabled: json['isWebLoginEnabled'] as bool,
  role: (json['role'] as List<dynamic>)
      .map((e) => RoleDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  company: CompanyDto.fromJson(json['company'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ProfileDataToJson(_ProfileData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'photo': instance.photo,
      'gpsRadius': instance.gpsRadius,
      'isZoneEnabled': instance.isZoneEnabled,
      'isCameraEnabled': instance.isCameraEnabled,
      'dashboardPath': instance.dashboardPath,
      'isWebLoginEnabled': instance.isWebLoginEnabled,
      'role': instance.role,
      'company': instance.company,
    };

_RoleDto _$RoleDtoFromJson(Map<String, dynamic> json) =>
    _RoleDto(id: (json['id'] as num).toInt(), name: json['name'] as String);

Map<String, dynamic> _$RoleDtoToJson(_RoleDto instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};

_CompanyDto _$CompanyDtoFromJson(Map<String, dynamic> json) => _CompanyDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  timeZone: json['timeZone'] as String,
);

Map<String, dynamic> _$CompanyDtoToJson(_CompanyDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'timeZone': instance.timeZone,
    };
