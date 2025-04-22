import 'package:freezed_annotation/freezed_annotation.dart';

part 'zone_model.freezed.dart';

@freezed
abstract class ZoneModel with _$ZoneModel {
  const factory ZoneModel({
    required int id,
    required String name,
    String? description,
    required double latitude,
    required double longitude,
    required bool isActive,
    required int version,
  }) = _ZoneModel;
}
