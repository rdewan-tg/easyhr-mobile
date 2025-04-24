import 'package:freezed_annotation/freezed_annotation.dart';

part 'zone_response.freezed.dart';
part 'zone_response.g.dart';

// helper to parse double from string or num
double _doubleFromString(String value) => double.tryParse(value) ?? 0.0;

ZoneReponse deserializeZoneReponse(Map<String, dynamic> json) =>
    ZoneReponse.fromJson(json);

@freezed
abstract class ZoneReponse with _$ZoneReponse {
  const factory ZoneReponse({
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "data") required List<ZoneData> data,
  }) = _ZoneReponse;

  factory ZoneReponse.fromJson(Map<String, dynamic> json) =>
      _$ZoneReponseFromJson(json);
}

@freezed
abstract class ZoneData with _$ZoneData {
  const factory ZoneData({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "latitude", fromJson: _doubleFromString)
    required double latitude,
    @JsonKey(name: "longitude", fromJson: _doubleFromString)
    required double longitude,
    @JsonKey(name: "isActive") required bool isActive,
    @JsonKey(name: "version") required int version,
    @JsonKey(name: "companyId") required int companyId,
    @JsonKey(name: "createdAt") required DateTime createdAt,
    @JsonKey(name: "updatedAt") required DateTime updatedAt,
  }) = _ZoneData;

  factory ZoneData.fromJson(Map<String, dynamic> json) =>
      _$ZoneDataFromJson(json);
}
