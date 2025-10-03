// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_setting_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanySettingResponse _$CompanySettingResponseFromJson(
  Map<String, dynamic> json,
) => _CompanySettingResponse(
  status: json['status'] as String,
  data: CompanySettingData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CompanySettingResponseToJson(
  _CompanySettingResponse instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};

_CompanySettingData _$CompanySettingDataFromJson(Map<String, dynamic> json) =>
    _CompanySettingData(
      id: (json['id'] as num).toInt(),
      timeZone: json['timeZone'] as String,
      gpsRadius: (json['gpsRadius'] as num).toInt(),
      isLocationData: json['isLocationData'] as bool,
      isZoneEnabled: json['isZoneEnabled'] as bool,
      currencyCode: json['currencyCode'] as String,
      companyId: (json['companyId'] as num).toInt(),
      isCameraEnabled: json['isCameraEnabled'] as bool,
    );

Map<String, dynamic> _$CompanySettingDataToJson(_CompanySettingData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timeZone': instance.timeZone,
      'gpsRadius': instance.gpsRadius,
      'isLocationData': instance.isLocationData,
      'isZoneEnabled': instance.isZoneEnabled,
      'currencyCode': instance.currencyCode,
      'companyId': instance.companyId,
      'isCameraEnabled': instance.isCameraEnabled,
    };
