import 'package:blog/data/dto/blog_response.dart';
import 'package:blog/data/dto/blogs_response.dart';

abstract interface class IBlogRepository {
  Future<BlogResponse> getBlogById(int id);

  Future<BlogsResponse> getBlogs();
}
