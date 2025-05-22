import 'package:blog/data/dto/blog_response.dart';
import 'package:blog/data/dto/blogs_response.dart';
import 'package:core/data/remote/dtos/request/set_me_firebase_token_request.dart';
import 'package:core/data/remote/dtos/response/set_me_firebase_token_response.dart';

abstract interface class IBlogRepository {
  Future<BlogResponse> getBlogById(int id);

  Future<BlogsResponse> getBlogs();

  Future<Map<String, String>> getAllSettings();

  Future<SetMeFirebaseTokenResponse> setFirebaseDeviceToken(
    SetMeFirebaseTokenRequest request,
  );
}
