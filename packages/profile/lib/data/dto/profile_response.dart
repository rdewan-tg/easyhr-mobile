import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_response.freezed.dart';
part 'profile_response.g.dart';

ProfileResponse deserializeProfileResponse(
  Map<String, dynamic> json,
) => ProfileResponse.fromJson(json);

@freezed
abstract class ProfileResponse with _$ProfileResponse {
  const factory ProfileResponse({
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "data") required ProfileData data,
  }) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
}

@freezed
abstract class ProfileData with _$ProfileData {
  const factory ProfileData({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "timeZone") required String timeZone,
    @JsonKey(name: "gpsRadius") required int gpsRadius,
    @JsonKey(name: "isLocationData") required bool isLocationData,
    @JsonKey(name: "isZoneEnabled") required bool isZoneEnabled,
    @JsonKey(name: "currencyCode") required String currencyCode,
    @JsonKey(name: "companyId") required int companyId,
  }) = _ProfileData;

  factory ProfileData.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataFromJson(json);
}


