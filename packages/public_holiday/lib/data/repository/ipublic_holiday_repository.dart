import 'package:public_holiday/data/dto/public_holiday_response.dart';

abstract interface class IPublicHolidayRepository {
  Future<PublicHolidayResponse> getPublicHoliday();

  Future<Map<String, String>> getAllSettings();
}
