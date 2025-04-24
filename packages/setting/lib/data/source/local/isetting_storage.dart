abstract interface class ISettingStorage {
  Future<void> clearToken();

  Future<void> setFirstRun();

  Future<bool> getFirstRun();
}
