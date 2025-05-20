import 'package:blog/data/dto/blog_response.dart';
import 'package:blog/data/dto/blogs_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:core/data/remote/endpoint.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:core/data/remote/network_service.dart';

part 'blog_api.g.dart';

final blogApiProvider = Provider.autoDispose<BlogApi>((ref) {
  final dio = ref.watch(networkServiceProvider);

  return BlogApi(dio);
});

@RestApi()
abstract class BlogApi {
  factory BlogApi(Dio dio) => _BlogApi(dio);

  @GET(getBlogEndPoint)
  Future<BlogsResponse> getBlogs();

  @GET(getBlogEndPointById)
  Future<BlogResponse> getBlogById(@Path("id") int id);
}
