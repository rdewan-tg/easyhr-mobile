
abstract class IMapService {
  Future<String?> getAttendanceStatus();

  Future<void> setAttendanceStatus(String status);
}