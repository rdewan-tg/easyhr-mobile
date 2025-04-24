import 'package:attendance/features/zone/data/dto/zone_response.dart';
import 'package:attendance/features/zone/data/repository/izone_repository.dart';
import 'package:attendance/features/zone/data/source/remote/zone_api_service.dart';
import 'package:common/common.dart';
import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/dao/setting_dao.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final zoneRepositoryProvider = Provider.autoDispose<IZoneRepository>((ref) {
  return ZoneRepository(
    ref.watch(zoneApiProvider),
    ref.watch(settingDaoProvider),
  );
});

final class ZoneRepository with DioExceptionMapper implements IZoneRepository {
  final ZoneApiService _apiService;
  final SettingDao _settingDao;

  ZoneRepository(this._apiService, this._settingDao);

  @override
  Future<ZoneReponse> getZones() async {
    try {
      final response = await _apiService.getZones();
      return response;
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    } catch (e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    }
  }

  @override
  Future<Map<String, String>> getAllSettings() {
    try {
      return _settingDao.getAllSettings();
    } catch (e, stackTrace) {
      // Map unexpected exceptions to Failure
      throw Failure(
        message: 'An unexpected error occurred'.hardcoded,
        exception: e as Exception,
        stackTrace: stackTrace,
      );
    }
  }
}
