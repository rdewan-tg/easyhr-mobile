import 'package:blog/data/dto/blog_response.dart';
import 'package:blog/data/dto/blogs_response.dart';
import 'package:blog/data/repository/iblog_repository.dart';
import 'package:blog/data/source/remote/blog_api.dart';
import 'package:common/common.dart';
import 'package:dio/dio.dart';
import 'package:common/exception/failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final blogRepositoryProvider = Provider.autoDispose<IBlogRepository>((ref) {
  final BlogApi blogApi = ref.watch(blogApiProvider);

  return BlogRepository(blogApi);
});

final class BlogRepository with DioExceptionMapper implements IBlogRepository {
  final BlogApi blogApi;

  BlogRepository(this.blogApi);

  @override
  Future<BlogResponse> getBlogById(int id) async {
    try {
      return await blogApi.getBlogById(id);
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
  Future<BlogsResponse> getBlogs() async {
    try {
      return await blogApi.getBlogs();
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
}
