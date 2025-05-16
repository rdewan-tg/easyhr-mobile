import 'package:attendance/features/map/data/source/local/ilocal_storage.dart';
import 'package:core/data/local/secure_storage/isecure_storage.dart';
import 'package:core/data/local/secure_storage/secure_storage.dart';
import 'package:core/data/local/secure_storage/secure_storage_const.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final localStorageProvider = Provider.autoDispose<ILocalStorage>((ref) {
  final secureStorage = ref.watch(secureStorageProvider);

  return LocalStorage(secureStorage);
});

final class LocalStorage implements ILocalStorage {
  final ISecureStorage _secureStorage;

  LocalStorage(this._secureStorage);

  @override
  Future<String?> getAttendanceStatus() async {
    try {
      return await _secureStorage.read(attendanceStatusKey);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> setAttendanceStatus(String status) async {
    try {
      return await _secureStorage.write(attendanceStatusKey, status);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> getConsentStatement() async {
    try {
      final result = await _secureStorage.read(consentStatementKey);
      return result == null || result == 'false' ? false : true;
    } catch (e) {
      rethrow;
    }
  }
}
