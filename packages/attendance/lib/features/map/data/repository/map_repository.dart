
import 'package:attendance/features/map/data/source/local/local_storage.dart';
import 'package:common/exception/failure.dart';
import 'package:attendance/features/map/data/repository/imap_repository.dart';
import 'package:attendance/features/map/data/source/local/ilocal_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mapRepositoryProvider = Provider<IMapRepository>((ref) {
  return MapReporitory(ref.watch(localStorageProvider));
});

final class MapReporitory implements IMapRepository {
  final  ILocalStorage _localStorage;

  MapReporitory(this._localStorage);


  @override
  Future<String?> getAttendanceStatus() async {
    try {
      return _localStorage.getAttendanceStatus();
    } catch (e,s) {
      throw Failure(message: e.toString(), stackTrace: s);
    }
  }

  @override
  Future<void> setAttendanceStatus(String status) async {
    try {
      await _localStorage.setAttendanceStatus(status);

    } catch (e,s) {
      throw Failure(message: e.toString(), stackTrace: s);
    }
  }

}