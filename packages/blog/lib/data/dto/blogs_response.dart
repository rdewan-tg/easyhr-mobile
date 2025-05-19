import 'package:blog/data/dto/blog_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'blogs_response.freezed.dart';
part 'blogs_response.g.dart';

@freezed
abstract class BlogsResponse with _$BlogsResponse {
  factory BlogsResponse({
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "data") @Default([]) List<BlogResponseData> data,
  }) = _BlogsResponse;

  factory BlogsResponse.fromJson(Map<String, dynamic> json) =>
      _$BlogsResponseFromJson(json);
}
