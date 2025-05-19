import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog_response.freezed.dart';
part 'blog_response.g.dart';

@freezed
abstract class BlogResponse with _$BlogResponse {
  factory BlogResponse({
    required String status,
    required BlogResponseData data,
  }) = _BlogResponse;

  factory BlogResponse.fromJson(Map<String, dynamic> json) =>
      _$BlogResponseFromJson(json);
}

@freezed
abstract class BlogResponseData with _$BlogResponseData {
  const factory BlogResponseData({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "content") required String content,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "isActive") required bool isActive,
    @JsonKey(name: "createdAt") required String createdAt,
    @JsonKey(name: "updatedAt") required String updatedAt,
  }) = _BlogResponseData;

  factory BlogResponseData.fromJson(Map<String, dynamic> json) =>
      _$BlogResponseDataFromJson(json);
}
