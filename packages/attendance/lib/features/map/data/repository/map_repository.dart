import 'package:attendance/features/map/data/source/local/local_storage.dart';
import 'package:common/exception/failure.dart';
import 'package:core/data/local/db/dao/setting_dao.dart';
import 'package:attendance/features/map/data/repository/imap_repository.dart';
import 'package:attendance/features/map/data/source/local/ilocal_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:common/common.dart';

final mapRepositoryProvider = Provider<IMapRepository>((ref) {
  return MapReporitory(
    ref.watch(localStorageProvider),
    ref.watch(settingDaoProvider),
  );
});

final class MapReporitory implements IMapRepository {
  final ILocalStorage _localStorage;
  final SettingDao _settingDao;

  MapReporitory(this._localStorage, this._settingDao);

  @override
  Future<String?> getAttendanceStatus() async {
    try {
      return _localStorage.getAttendanceStatus();
    } catch (e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    }
  }

  @override
  Future<void> setAttendanceStatus(String status) async {
    try {
      await _localStorage.setAttendanceStatus(status);
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

  @override
  Future<bool> getConsentStatement() async {
    try {
      return await _localStorage.getConsentStatement();
    } catch (e, s) {
      throw Failure(message: e.toString(), stackTrace: s);
    }
  }
}
