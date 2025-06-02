import 'dart:isolate';

import 'package:public_holiday/application/ipublic_holiday_service.dart';
import 'package:public_holiday/data/dto/public_holiday_response.dart';
import 'package:public_holiday/data/repository/ipublic_holiday_repository.dart';
import 'package:public_holiday/data/repository/public_holiday_repository.dart';
import 'package:public_holiday/domain/model/public_holiday.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:common/exception/failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timezone/data/latest.dart' as tz_latest;
import 'package:timezone/timezone.dart' as tz;
import 'package:intl/intl.dart';

final publicHolidayServiceProvider = Provider.autoDispose<PublicHolidayService>(
  (ref) {
    final publicHolidayRepository = ref.watch(publicHolidayRepositoryProvider);

    return PublicHolidayService(publicHolidayRepository);
  },
);

final class PublicHolidayService implements IPublicHolidayService {
  final IPublicHolidayRepository _publicHolidayRepository;

  PublicHolidayService(this._publicHolidayRepository);

  @override
  Future<Result<List<PublicHoliday>, Failure>> getPublicHoliday() async {
    try {
      // get public holiday from api
      final response = await _publicHolidayRepository.getPublicHoliday();
      // get all settings
      final setting = await _publicHolidayRepository.getAllSettings();

      // Get timezone from settings or use a default
      final timeZone = setting['timezone'] ?? 'UTC';

      final publicHolidayList = await Isolate.run(
        () => _mapToPublicHolidayList(response, timeZone),
      );
      return Success(publicHolidayList);
    } on Failure catch (e) {
      return Error(e);
    }
  }
}

List<PublicHoliday> _mapToPublicHolidayList(
  PublicHolidayResponse response,
  String timeZone,
) {
  // initialize Time Zone database from latest
  tz_latest.initializeTimeZones();
  final location = tz.getLocation(timeZone);
  tz.setLocalLocation(location);
  final now = DateTime.now();

  return response.data
      .map(
        (e) => PublicHoliday(
          id: e.id,
          name: e.name,
          description: e.description,
          date: _formatDate(timeZone, e.date, location),
          year: e.year,
          isRecurring: e.isRecurring,
          day: _getDayOfWeek(e.date),
          month: _getMonthName(e.date),
          isPast: _isPast(e.date, now),
          isInCurrentMonth: _isInCurrentMonth(e.date, now),
        ),
      )
      .toList();
}

String _formatDate(String timeZone, DateTime dateTime, tz.Location location) {
  // get the current date and time
  final now = tz.TZDateTime.parse(location, dateTime.toIso8601String());
  // format the date and time
  final formattedDateTime = DateFormat("dd/MM/yyyy").format(now);

  return formattedDateTime;
}

/// Returns the day of week as a string (e.g., "Monday", "Tuesday", etc.)
String _getDayOfWeek(DateTime dateTime) {
  // Using DateFormat from intl package for day of week
  return DateFormat('EEEE').format(dateTime);
}

/// Returns the month name as a string (e.g., "January", "February", etc.)
String _getMonthName(DateTime dateTime) {
  // Using DateFormat from intl package for month name
  return DateFormat('MMMM').format(dateTime);
}

/// Checks if the given date is in the past
bool _isPast(DateTime dateTime, DateTime now) {
  return dateTime.isBefore(now);
}

/// Checks if the given date is in the current month
bool _isInCurrentMonth(DateTime dateTime, DateTime now) {
  return dateTime.year == now.year && dateTime.month == now.month;
}
