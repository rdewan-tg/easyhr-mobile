part of common;

final appLoggerProvider = Provider<AppLogger>((ref) {
  return AppLogger();
});

class AppLogger {
  AppLogger() {
    _init();
  }

  void _init() async {
    if (kDebugMode) {
      Logger.root.level = Level.ALL;
      Logger.root.onRecord.listen((event) {
        if (event.level == Level.SEVERE) {
          debugPrint(
            "${event.level.name}: ${event.time} : ${event.message} : ${event.error} : ${event.stackTrace}",
          );
        } else if (event.level == Level.INFO) {
          debugPrint("${event.level.name}: message : ${event.message} ");
        } else {
          debugPrint(
            "${event.level.name}: ${event.loggerName} : ${event.time} : ${event.message}",
          );
        }
      });
    } else {
      Logger.root.level = Level.INFO;
    }
  }
}
