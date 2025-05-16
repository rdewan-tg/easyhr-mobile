import 'package:core/data/local/db/dao/setting_dao.dart';
import 'package:core/data/local/secure_storage/isecure_storage.dart';
import 'package:core/data/local/secure_storage/secure_storage.dart';
import 'package:core/data/local/secure_storage/secure_storage_const.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:setting/data/source/local/isetting_storage.dart';

final settingStorageProvider = Provider<ISettingStorage>((ref) {
  final secureStorage = ref.watch(secureStorageProvider);
  final settingDao = ref.watch(settingDaoProvider);

  return SetingStorage(secureStorage, settingDao);
});

class SetingStorage implements ISettingStorage {
  final ISecureStorage _secureStorage;
  final SettingDao _settingDao;

  SetingStorage(this._secureStorage, this._settingDao);

  @override
  Future<void> clearToken() async {
    await _secureStorage.delete(accessTokenKey);
    await _secureStorage.delete(refreshTokenKey);
  }

  @override
  Future<bool> getFirstRun() async {
    final result = await _secureStorage.read(firstRunKey);
    // if result is null or 'true', return true; otherwise, return false
    return result == null || result == 'true' ? true : false;
  }

  @override
  Future<void> setFirstRun() async {
    // after first run, set firstRunKey to 'false'
    await _secureStorage.write(firstRunKey, 'false');
  }

  @override
  Future<void> upsertMultipleSettings(Map<String, String> settings) async {
    try {
      await _settingDao.upsertMultipleSettings(settings);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> setConsentStatement(bool value) async {
    await _secureStorage.write(consentStatementKey, value ? 'true' : 'false');
  }

  @override
  Future<bool> getConsentStatement() async {
    final result = await _secureStorage.read(consentStatementKey);
    return result == null || result == 'false' ? false : true;
  }
}
