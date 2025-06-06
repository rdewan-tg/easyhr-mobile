import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_holiday_response.freezed.dart';
part 'public_holiday_response.g.dart';

@freezed
abstract class PublicHolidayResponse with _$PublicHolidayResponse {
  factory PublicHolidayResponse({
    required String status,
    @Default([]) List<PublicHolidayData> data,
  }) = _PublicHolidayResponse;

  factory PublicHolidayResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicHolidayResponseFromJson(json);
}

@freezed
abstract class PublicHolidayData with _$PublicHolidayData {
  factory PublicHolidayData({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'date') required DateTime date,
    @JsonKey(name: 'year') required int year,
    @JsonKey(name: 'isRecurring') required bool isRecurring,
    @JsonKey(name: 'companyId') required int companyId,
    @JsonKey(name: 'states') @Default([]) List<PublicHolidayState> states,
  }) = _PublicHolidayData;

  factory PublicHolidayData.fromJson(Map<String, dynamic> json) =>
      _$PublicHolidayDataFromJson(json);
}

@freezed
abstract class PublicHolidayState with _$PublicHolidayState {
  factory PublicHolidayState({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'code') String? code,
  }) = _PublicHolidayState;

  factory PublicHolidayState.fromJson(Map<String, dynamic> json) =>
      _$PublicHolidayStateFromJson(json);
}
