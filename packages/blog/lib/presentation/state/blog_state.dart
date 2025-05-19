import 'package:blog/domain/model/blog_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog_state.freezed.dart';

@freezed
class BlogState with _$BlogState {
  factory BlogState({
    @Default(false) bool isLoading,
    @Default([]) List<BlogModel> blogs,
    BlogModel? blog,
    String? error,
  }) = _BlogState;
}
