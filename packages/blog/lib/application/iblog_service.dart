import 'package:blog/domain/model/blog_model.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:common/exception/failure.dart';

abstract interface class IBlogService {
  Future<Result<BlogModel, Failure>> getBlogById(int id);

  Future<Result<List<BlogModel>, Failure>> getBlogs();
}
