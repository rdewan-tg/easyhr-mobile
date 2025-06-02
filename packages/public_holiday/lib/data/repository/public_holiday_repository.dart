import 'package:core/data/local/db/dao/setting_dao.dart';
import 'package:public_holiday/data/dto/public_holiday_response.dart';
import 'package:public_holiday/data/repository/ipublic_holiday_repository.dart';
import 'package:dio/dio.dart';
import 'package:common/common.dart';
import 'package:public_holiday/data/source/remote/public_holiday_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:common/exception/failure.dart';

final publicHolidayRepositoryProvider =
    Provider.autoDispose<PublicHolidayRepository>((ref) {
      final publicHolidayApi = ref.watch(publicHolidayApiProvider);
      final settingDao = ref.watch(settingDaoProvider);

      return PublicHolidayRepository(
        publicHolidayApi: publicHolidayApi,
        settingDao: settingDao,
      );
    });

final class PublicHolidayRepository
    with DioExceptionMapper
    implements IPublicHolidayRepository {
  final PublicHolidayApi publicHolidayApi;
  final SettingDao settingDao;

  PublicHolidayRepository({
    required this.publicHolidayApi,
    required this.settingDao,
  });

  @override
  Future<PublicHolidayResponse> getPublicHoliday() async {
    try {
      final response = await publicHolidayApi.getPublicHoliday();
      return response;
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    } catch (e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    }
  }

  @override
  Future<Map<String, String>> getAllSettings() async {
    try {
      final response = await settingDao.getAllSettings();
      return response;
    } catch (e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    }
  }
}
