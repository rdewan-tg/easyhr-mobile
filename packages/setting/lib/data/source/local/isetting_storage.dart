abstract interface class ISettingStorage {
  Future<void> clearToken();

  Future<void> setFirstRun();

  Future<bool> getFirstRun();

  Future<void> setConsentStatement(bool value);

  Future<bool> getConsentStatement();

  Future<void> upsertMultipleSettings(Map<String, String> settings);
}
