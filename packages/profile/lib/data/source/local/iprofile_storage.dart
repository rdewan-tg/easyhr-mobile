abstract interface class IProfileStorage {
  Future<void> clearToken();

  Future<String?> readRefreshToken();
}
