import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_setting_response.freezed.dart';
part 'company_setting_response.g.dart';

CompanySettingResponse deserializeCompanySettingResponse(
  Map<String, dynamic> json,
) => CompanySettingResponse.fromJson(json);

@freezed
class CompanySettingResponse with _$CompanySettingResponse {
  const factory CompanySettingResponse({
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "data") required CompanySettingData data,
  }) = _CompanySettingResponse;

  factory CompanySettingResponse.fromJson(Map<String, dynamic> json) =>
      _$CompanySettingResponseFromJson(json);
}

@freezed
class CompanySettingData with _$CompanySettingData {
  const factory CompanySettingData({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "timeZone") required String timeZone,
    @JsonKey(name: "gpsRadius") required int gpsRadius,
    @JsonKey(name: "isLocationData") required bool isLocationData,
    @JsonKey(name: "isZoneEnabled") required bool isZoneEnabled,
    @JsonKey(name: "currencyCode") required String currencyCode,
    @JsonKey(name: "companyId") required int companyId,
  }) = _CompanySettingData;

  factory CompanySettingData.fromJson(Map<String, dynamic> json) =>
      _$CompanySettingDataFromJson(json);
}
