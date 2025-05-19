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
      final blog = await Isolate.run(
        () => _mapBlogResponseToBlogModel(response),
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

      final blogs = await Isolate.run(
        () => _mapBlogsResponseToBlogModel(response),
      );

      return Success(blogs);
    } on Failure catch (e) {
      return Error(e);
    }
  }
}

BlogModel _mapBlogResponseToBlogModel(BlogResponse response) {
  final data = response.data;
  return BlogModel(
    id: data.id,
    title: data.title,
    content: data.content,
    image: data.image,
    createdAt: data.createdAt,
    updatedAt: data.updatedAt,
  );
}

List<BlogModel> _mapBlogsResponseToBlogModel(BlogsResponse response) {
  return response.data
      .map(
        (blog) => BlogModel(
          id: blog.id,
          title: blog.title,
          content: blog.content,
          image: blog.image,
          createdAt: blog.createdAt,
          updatedAt: blog.updatedAt,
        ),
      )
      .toList();
}
