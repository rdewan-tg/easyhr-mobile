import 'dart:isolate';

import 'package:blog/application/iblog_service.dart';
import 'package:blog/data/dto/blog_response.dart';
import 'package:blog/data/dto/blogs_response.dart';
import 'package:blog/data/repository/blog_repository.dart';
import 'package:blog/data/repository/iblog_repository.dart';
import 'package:blog/domain/model/blog_model.dart';
import 'package:common/exception/failure.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timezone/data/latest.dart' as tz_latest;
import 'package:timezone/timezone.dart' as tz;
import 'package:intl/intl.dart';

final blogServiceProvider = Provider.autoDispose<IBlogService>((ref) {
  final IBlogRepository blogRepository = ref.watch(blogRepositoryProvider);
  return BlogService(blogRepository);
});

final class BlogService implements IBlogService {
  final IBlogRepository blogRepository;

  BlogService(this.blogRepository);

  @override
  Future<Result<BlogModel, Failure>> getBlogById(int id) async {
    try {
      final response = await blogRepository.getBlogById(id);
      final setting = await blogRepository.getAllSettings();
      final blog = await Isolate.run(
        () => _mapBlogResponseToBlogModel(
          response,
          setting['timezone'] ?? 'Asia/Singapore',
        ),
      );
      return Success(blog);
    } on Failure catch (e) {
      return Error(e);
    }
  }

  @override
  Future<Result<List<BlogModel>, Failure>> getBlogs() async {
    try {
      final response = await blogRepository.getBlogs();
      final setting = await blogRepository.getAllSettings();
      final blogs = await Isolate.run(
        () => _mapBlogsResponseToBlogModel(
          response,
          setting['timezone'] ?? 'Asia/Singapore',
        ),
      );

      return Success(blogs);
    } on Failure catch (e) {
      return Error(e);
    }
  }
}

BlogModel _mapBlogResponseToBlogModel(BlogResponse response, String timeZone) {
  final data = response.data;
  return BlogModel(
    id: data.id,
    title: data.title,
    content: data.content,
    image: data.imageUrl,
    createdAt: _currentDateTime(timeZone, data.createdAt),
    updatedAt: _currentDateTime(timeZone, data.updatedAt),
  );
}

List<BlogModel> _mapBlogsResponseToBlogModel(
  BlogsResponse response,
  String timeZone,
) {
  return response.data
      .map(
        (blog) => BlogModel(
          id: blog.id,
          title: blog.title,
          content: blog.content,
          image: blog.imageUrl,
          createdAt: _currentDateTime(timeZone, blog.createdAt),
          updatedAt: _currentDateTime(timeZone, blog.updatedAt),
        ),
      )
      .toList();
}

String _currentDateTime(String timeZone, String dateTime) {
  // initialize Time Zone database from latest
  tz_latest.initializeTimeZones();
  final location = tz.getLocation(timeZone);
  tz.setLocalLocation(location);
  // get the current date and time
  final now = tz.TZDateTime.parse(location, dateTime);
  // format the date and time
  final formattedDateTime = DateFormat("dd/MM/yyyy").format(now);

  return formattedDateTime;
}
