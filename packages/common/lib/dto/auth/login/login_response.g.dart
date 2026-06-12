// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    _LoginResponse(
      status: json['status'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(_LoginResponse instance) =>
    <String, dynamic>{'status': instance.status, 'data': instance.data};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  token: TokenDto.fromJson(json['token'] as Map<String, dynamic>),
  user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'token': instance.token,
  'user': instance.user,
};

_TokenDto _$TokenDtoFromJson(Map<String, dynamic> json) => _TokenDto(
  accessToken: json['access_token'] as String,
  refreshToken: json['refresh_token'] as String,
);

Map<String, dynamic> _$TokenDtoToJson(_TokenDto instance) => <String, dynamic>{
  'access_token': instance.accessToken,
  'refresh_token': instance.refreshToken,
};

_UserDto _$UserDtoFromJson(Map<String, dynamic> json) => _UserDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  email: json['email'] as String,
  phoneNumber: json['phoneNumber'] as String?,
  photo: json['avatar'] as String?,
  isActive: json['isActive'] as bool,
  uuid: json['uuid'] as String?,
  gpsRadius: (json['gpsRadius'] as num?)?.toInt(),
  isZoneEnabled: json['isZoneEnabled'] as bool?,
  role: (json['role'] as List<dynamic>)
      .map((e) => RoleDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  company: CompanyDto.fromJson(json['company'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UserDtoToJson(_UserDto instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'phoneNumber': instance.phoneNumber,
  'avatar': instance.photo,
  'isActive': instance.isActive,
  'uuid': instance.uuid,
  'gpsRadius': instance.gpsRadius,
  'isZoneEnabled': instance.isZoneEnabled,
  'role': instance.role,
  'company': instance.company,
};

_RoleDto _$RoleDtoFromJson(Map<String, dynamic> json) => _RoleDto(
  id: (json['id'] as num).toInt(),
  name: $enumDecode(_$UserRoleEnumMap, json['name']),
);

Map<String, dynamic> _$RoleDtoToJson(_RoleDto instance) => <String, dynamic>{
  'id': instance.id,
  'name': _$UserRoleEnumMap[instance.name]!,
};

const _$UserRoleEnumMap = {
  UserRole.superAdmin: 'superAdmin',
  UserRole.admin: 'admin',
  UserRole.manager: 'manager',
  UserRole.supervisor: 'supervisor',
  UserRole.operator: 'operator',
  UserRole.user: 'user',
  UserRole.guest: 'guest',
};

_CompanyDto _$CompanyDtoFromJson(Map<String, dynamic> json) => _CompanyDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  companyCode: json['companyCode'] as String?,
  countryCode: json['countryCode'] as String?,
  gpsRadius: (json['gpsRadius'] as num).toInt(),
  timeZone: json['timeZone'] as String,
  isZoneEnabled: json['isZoneEnabled'] as bool,
  isCameraEnabled: json['isCameraEnabled'] as bool,
  currencyCode: json['currencyCode'] as String,
);

Map<String, dynamic> _$CompanyDtoToJson(_CompanyDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'companyCode': instance.companyCode,
      'countryCode': instance.countryCode,
      'gpsRadius': instance.gpsRadius,
      'timeZone': instance.timeZone,
      'isZoneEnabled': instance.isZoneEnabled,
      'isCameraEnabled': instance.isCameraEnabled,
      'currencyCode': instance.currencyCode,
    };

_DeviceSettingDto _$DeviceSettingDtoFromJson(Map<String, dynamic> json) =>
    _DeviceSettingDto(
      deviceId: json['deviceId'] as String?,
      salesPersonCode: json['salesPersonCode'] as String?,
      orderNumberFormat: json['orderNumberFormat'] as String?,
    );

Map<String, dynamic> _$DeviceSettingDtoToJson(_DeviceSettingDto instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'salesPersonCode': instance.salesPersonCode,
      'orderNumberFormat': instance.orderNumberFormat,
    };
