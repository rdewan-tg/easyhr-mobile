import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:public_holiday/domain/model/public_holiday.dart';

part 'public_holiday_state.freezed.dart';

@freezed
abstract class PublicHolidayState with _$PublicHolidayState {
  factory PublicHolidayState({
    @Default(false) bool isLoading,
    @Default([]) List<PublicHoliday> publicHolidays,
    String? error,
  }) = _PublicHolidayState;
}
