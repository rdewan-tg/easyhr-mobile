import 'package:core/data/remote/network_service.dart';
import 'package:notification/data/dto/notification_read_response.dart';
import 'package:notification/data/dto/notifications_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:core/data/remote/endpoint.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'notification_api.g.dart';

final notificationApiProvider = Provider<NotificationApi>((ref) {
  return NotificationApi(ref.read(networkServiceProvider));
});

@RestApi()
abstract class NotificationApi {
  factory NotificationApi(Dio dio) => _NotificationApi(dio);

  @GET(getNotificationEndPoint)
  Future<NotificationsResponse> getNotifications();

  @POST(markNotificationAsReadEndPoint)
  Future<NotificationReadResponse> markAsRead(@Path('id') int id);
}
