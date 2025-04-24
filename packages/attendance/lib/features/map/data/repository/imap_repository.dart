abstract interface class IMapRepository {
  Future<void> setAttendanceStatus(String status);

  Future<String?> getAttendanceStatus();

  Future<Map<String, String>> getAllSettings();
}
