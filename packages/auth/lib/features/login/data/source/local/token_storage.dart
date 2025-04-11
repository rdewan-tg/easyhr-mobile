import 'package:auth/features/login/data/source/local/itoken_storage.dart';
import 'package:core/data/local/secure_storage/isecure_storage.dart';
import 'package:core/data/local/secure_storage/secure_storage.dart';
import 'package:core/data/local/secure_storage/secure_storage_const.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final tokenStorageProvider = Provider.autoDispose<ITokenStorage>((ref) {
  final secureStorage = ref.watch(secureStorageProvider);

  return TokenStorage(secureStorage);
});

final class TokenStorage implements ITokenStorage {
  final ISecureStorage _secureStorage;

  TokenStorage(this._secureStorage);

  @override
  Future<void> storeToken(String accessToken, String refreshToken, String uuid) async {
    await _secureStorage.write(accessTokenKey, accessToken);
    await _secureStorage.write(refreshTokenKey, refreshToken);
    await _secureStorage.write(uuidKey, uuid);
  }

    @override
  Future<String?> getUuid() async {
    try {
      return await _secureStorage.read(uuidKey);
    } catch (e) {
      rethrow;
    }
  }
  
}
