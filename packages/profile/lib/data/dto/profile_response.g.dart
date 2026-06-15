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
  timeZone: json['timeZone'] as String,
  gpsRadius: (json['gpsRadius'] as num).toInt(),
  isLocationData: json['isLocationData'] as bool,
  isZoneEnabled: json['isZoneEnabled'] as bool,
  currencyCode: json['currencyCode'] as String,
  companyId: (json['companyId'] as num).toInt(),
);

Map<String, dynamic> _$ProfileDataToJson(_ProfileData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timeZone': instance.timeZone,
      'gpsRadius': instance.gpsRadius,
      'isLocationData': instance.isLocationData,
      'isZoneEnabled': instance.isZoneEnabled,
      'currencyCode': instance.currencyCode,
      'companyId': instance.companyId,
    };
