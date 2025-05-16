abstract interface class ILocalStorage {
  Future<void> setAttendanceStatus(String status);

  Future<String?> getAttendanceStatus();

  Future<bool> getConsentStatement();
}
