import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_response.freezed.dart';
part 'profile_response.g.dart';

ProfileResponse deserializeProfileResponse(Map<String, dynamic> json) =>
    ProfileResponse.fromJson(json);

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
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "phoneNumber") String? phoneNumber,
    @JsonKey(name: "photo") String? photo,
    @JsonKey(name: "gpsRadius") required int gpsRadius,
    @JsonKey(name: "isZoneEnabled") required bool isZoneEnabled,
    @JsonKey(name: "dashboardPath") required String dashboardPath,
    @JsonKey(name: "isWebLoginEnabled") required bool isWebLoginEnabled,
    @JsonKey(name: "role") required List<RoleDto> role,
    @JsonKey(name: "company") required CompanyDto company,
  }) = _ProfileData;

  factory ProfileData.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataFromJson(json);
}

@freezed
abstract class RoleDto with _$RoleDto {
  const factory RoleDto({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
  }) = _RoleDto;

  factory RoleDto.fromJson(Map<String, dynamic> json) =>
      _$RoleDtoFromJson(json);
}

@freezed
abstract class CompanyDto with _$CompanyDto {
  const factory CompanyDto({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "timeZone") required String timeZone,
  }) = _CompanyDto;

  factory CompanyDto.fromJson(Map<String, dynamic> json) =>
      _$CompanyDtoFromJson(json);
}
