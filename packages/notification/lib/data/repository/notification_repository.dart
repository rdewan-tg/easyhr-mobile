import 'package:core/data/local/db/dao/setting_dao.dart';
import 'package:notification/data/dto/notification_read_response.dart';
import 'package:notification/data/dto/notifications_response.dart';
import 'package:notification/data/repository/inotification_repository.dart';
import 'package:notification/data/source/remote/notification_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:common/common.dart';
import 'package:dio/dio.dart';
import 'package:common/exception/failure.dart';

final notificationRepositoryProvider = Provider<NotificationRepository>((ref) {
  return NotificationRepository(
    ref.read(notificationApiProvider),
    ref.read(settingDaoProvider),
  );
});

final class NotificationRepository
    with DioExceptionMapper
    implements INotificationRepository {
  final NotificationApi notificationApi;
  final SettingDao _settingDao;

  NotificationRepository(this.notificationApi, this._settingDao);

  @override
  Future<NotificationsResponse> getNotifications() async {
    try {
      return await notificationApi.getNotifications();
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    } catch (e, s) {
      throw Failure(
        message:
            "An unexpected error occurred. Please try again later".hardcoded,
        exception: e as Exception,
        stackTrace: s,
      );
    }
  }

  @override
  Future<NotificationReadResponse> markAsRead(int id) async {
    try {
      return await notificationApi.markAsRead(id);
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    } catch (e, s) {
      throw Failure(
        message:
            "An unexpected error occurred. Please try again later".hardcoded,
        exception: e as Exception,
        stackTrace: s,
      );
    }
  }

  @override
  Future<Map<String, String>> getAllSettings() {
    try {
      return _settingDao.getAllSettings();
    } catch (e, stackTrace) {
      // Map unexpected exceptions to Failure
      throw Failure(
        message: 'An unexpected error occurred'.hardcoded,
        exception: e as Exception,
        stackTrace: stackTrace,
      );
    }
  }
}
