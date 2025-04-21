

import 'package:attendance/features/map/application/imap_service.dart';
import 'package:attendance/features/map/data/repository/imap_repository.dart';
import 'package:attendance/features/map/data/repository/map_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mapServiceProvider = Provider<IMapService>((ref) {
  return MapService(ref.watch(mapRepositoryProvider));
});
final class MapService implements IMapService {
  final IMapRepository _repository;

  MapService(this._repository);

  @override
  Future<String?> getAttendanceStatus() async {
    try {

      return await _repository.getAttendanceStatus();
      
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> setAttendanceStatus(String status) async {
    try {
      return await _repository.setAttendanceStatus(status);
      
    } catch (e) {
      rethrow;
    }
  }
  
}