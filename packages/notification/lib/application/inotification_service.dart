import 'package:notification/domain/model/notification.dart';
import 'package:common/exception/failure.dart';
import 'package:multiple_result/multiple_result.dart';

abstract interface class INotificationService {
  Future<Result<List<Notification>, Failure>> getNotifications();
  Future<Result<void, Failure>> markAsRead(int id);
}
