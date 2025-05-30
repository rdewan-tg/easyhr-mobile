// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zone_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ZoneModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  int get version => throw _privateConstructorUsedError;

  /// Create a copy of ZoneModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ZoneModelCopyWith<ZoneModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZoneModelCopyWith<$Res> {
  factory $ZoneModelCopyWith(ZoneModel value, $Res Function(ZoneModel) then) =
      _$ZoneModelCopyWithImpl<$Res, ZoneModel>;
  @useResult
  $Res call({
    int id,
    String name,
    String? description,
    double latitude,
    double longitude,
    bool isActive,
    int version,
  });
}

/// @nodoc
class _$ZoneModelCopyWithImpl<$Res, $Val extends ZoneModel>
    implements $ZoneModelCopyWith<$Res> {
  _$ZoneModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ZoneModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? latitude = null,
    Object? longitude = null,
    Object? isActive = null,
    Object? version = null,
  }) {
    return _then(
      _value.copyWith(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                as String?,
        latitude: null == latitude
            ? _value.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                as double,
        longitude: null == longitude
            ? _value.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                as double,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                as bool,
        version: null == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                as int,
      ) as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ZoneModelImplCopyWith<$Res>
    implements $ZoneModelCopyWith<$Res> {
  factory _$$ZoneModelImplCopyWith(
    _$ZoneModelImpl value,
    $Res Function(_$ZoneModelImpl) then,
  ) = __$$ZoneModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String? description,
    double latitude,
    double longitude,
    bool isActive,
    int version,
  });
}

/// @nodoc
class __$$ZoneModelImplCopyWithImpl<$Res>
    extends _$ZoneModelCopyWithImpl<$Res, _$ZoneModelImpl>
    implements _$$ZoneModelImplCopyWith<$Res> {
  __$$ZoneModelImplCopyWithImpl(
    _$ZoneModelImpl _value,
    $Res Function(_$ZoneModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ZoneModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? latitude = null,
    Object? longitude = null,
    Object? isActive = null,
    Object? version = null,
  }) {
    return _then(
      _$ZoneModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                as String?,
        latitude: null == latitude
            ? _value.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                as double,
        longitude: null == longitude
            ? _value.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                as double,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                as bool,
        version: null == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                as int,
      ),
    );
  }
}

/// @nodoc

class _$ZoneModelImpl implements _ZoneModel {
  const _$ZoneModelImpl({
    required this.id,
    required this.name,
    this.description,
    required this.latitude,
    required this.longitude,
    required this.isActive,
    required this.version,
  });

  @override
  final int id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final bool isActive;
  @override
  final int version;

  @override
  String toString() {
    return 'ZoneModel(id: $id, name: $name, description: $description, latitude: $latitude, longitude: $longitude, isActive: $isActive, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZoneModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.version, version) || other.version == version));
  }

  @override
  int get hashCode => Object.hash(
        runtimeType,
        id,
        name,
        description,
        latitude,
        longitude,
        isActive,
        version,
      );

  /// Create a copy of ZoneModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ZoneModelImplCopyWith<_$ZoneModelImpl> get copyWith =>
      __$$ZoneModelImplCopyWithImpl<_$ZoneModelImpl>(this, _$identity);
}

abstract class _ZoneModel implements ZoneModel {
  const factory _ZoneModel({
    required final int id,
    required final String name,
    final String? description,
    required final double latitude,
    required final double longitude,
    required final bool isActive,
    required final int version,
  }) = _$ZoneModelImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  bool get isActive;
  @override
  int get version;

  /// Create a copy of ZoneModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ZoneModelImplCopyWith<_$ZoneModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
