import 'package:profile/data/dto/delete_me_response.dart';
import 'package:profile/data/dto/logout_response.dart';

abstract interface class IProfileRepository {
  Future<DeleteMeResponse> deleteMe();

  Future<LogoutResponse> logout();

  Future<void> clearToken();

  Future<Map<String, String>> getAllSettings();
}
