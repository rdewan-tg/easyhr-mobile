import 'package:public_holiday/domain/model/public_holiday.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:common/exception/failure.dart';

abstract interface class IPublicHolidayService {
  Future<Result<List<PublicHoliday>, Failure>> getPublicHoliday();
}
