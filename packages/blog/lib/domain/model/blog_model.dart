import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog_model.freezed.dart';

@freezed
class BlogModel with _$BlogModel {
  factory BlogModel({
    required int id,
    required String title,
    required String content,
    String? image,
    required String createdAt,
    required String updatedAt,
  }) = _BlogModel;
}
