import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_holiday.freezed.dart';

@freezed
abstract class PublicHoliday with _$PublicHoliday {
  factory PublicHoliday({
    required int id,
    required String name,
    String? description,
    required String date,
    required String
    day, // Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
    required String
    month, // January, February, March, April, May, June, July, August, September, October, November, December
    required int year,
    required bool isRecurring,
    required bool isPast, // true if the public holiday is in the past
    required bool
    isInCurrentMonth, // true if the public holiday is in the current month
    @Default([]) List<String> states,
  }) = _PublicHoliday;
}
