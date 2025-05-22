abstract interface class ISettingStorage {
  Future<void> clearToken();

  Future<void> setFirstRun();

  Future<bool> getFirstRun();

  Future<void> setConsentStatement(bool value);

  Future<bool> getConsentStatement();

  Future<void> setScheduleTime(String time);

  Future<int> getScheduleTime();

  Future<void> upsertMultipleSettings(Map<String, String> settings);
}
