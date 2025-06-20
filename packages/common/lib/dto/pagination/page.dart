import 'package:freezed_annotation/freezed_annotation.dart';

part 'page.freezed.dart';

@freezed
class Page with _$Page {
  const factory Page({
    @Default(1) int currentPage,
    @Default(1) int totalPages,
    @Default(0) int limit,
    @Default(0) int total,
  }) = _Page;
}
