// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zone_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ZoneReponse _$ZoneReponseFromJson(Map<String, dynamic> json) {
  return _ZoneReponse.fromJson(json);
}

/// @nodoc
mixin _$ZoneReponse {
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<ZoneData> get data => throw _privateConstructorUsedError;

  /// Serializes this ZoneReponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ZoneReponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ZoneReponseCopyWith<ZoneReponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZoneReponseCopyWith<$Res> {
  factory $ZoneReponseCopyWith(
    ZoneReponse value,
    $Res Function(ZoneReponse) then,
  ) = _$ZoneReponseCopyWithImpl<$Res, ZoneReponse>;
  @useResult
  $Res call({
    @JsonKey(name: "status") String status,
    @JsonKey(name: "data") List<ZoneData> data,
  });
}

/// @nodoc
class _$ZoneReponseCopyWithImpl<$Res, $Val extends ZoneReponse>
    implements $ZoneReponseCopyWith<$Res> {
  _$ZoneReponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ZoneReponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = null}) {
    return _then(
      _value.copyWith(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                as String,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                as List<ZoneData>,
      ) as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ZoneReponseImplCopyWith<$Res>
    implements $ZoneReponseCopyWith<$Res> {
  factory _$$ZoneReponseImplCopyWith(
    _$ZoneReponseImpl value,
    $Res Function(_$ZoneReponseImpl) then,
  ) = __$$ZoneReponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "status") String status,
    @JsonKey(name: "data") List<ZoneData> data,
  });
}

/// @nodoc
class __$$ZoneReponseImplCopyWithImpl<$Res>
    extends _$ZoneReponseCopyWithImpl<$Res, _$ZoneReponseImpl>
    implements _$$ZoneReponseImplCopyWith<$Res> {
  __$$ZoneReponseImplCopyWithImpl(
    _$ZoneReponseImpl _value,
    $Res Function(_$ZoneReponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ZoneReponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = null}) {
    return _then(
      _$ZoneReponseImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                as String,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                as List<ZoneData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ZoneReponseImpl implements _ZoneReponse {
  const _$ZoneReponseImpl({
    @JsonKey(name: "status") required this.status,
    @JsonKey(name: "data") required final List<ZoneData> data,
  }) : _data = data;

  factory _$ZoneReponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZoneReponseImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String status;
  final List<ZoneData> _data;
  @override
  @JsonKey(name: "data")
  List<ZoneData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ZoneReponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZoneReponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
        runtimeType,
        status,
        const DeepCollectionEquality().hash(_data),
      );

  /// Create a copy of ZoneReponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ZoneReponseImplCopyWith<_$ZoneReponseImpl> get copyWith =>
      __$$ZoneReponseImplCopyWithImpl<_$ZoneReponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZoneReponseImplToJson(this);
  }
}

abstract class _ZoneReponse implements ZoneReponse {
  const factory _ZoneReponse({
    @JsonKey(name: "status") required final String status,
    @JsonKey(name: "data") required final List<ZoneData> data,
  }) = _$ZoneReponseImpl;

  factory _ZoneReponse.fromJson(Map<String, dynamic> json) =
      _$ZoneReponseImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "data")
  List<ZoneData> get data;

  /// Create a copy of ZoneReponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ZoneReponseImplCopyWith<_$ZoneReponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ZoneData _$ZoneDataFromJson(Map<String, dynamic> json) {
  return _ZoneData.fromJson(json);
}

/// @nodoc
mixin _$ZoneData {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "latitude", fromJson: _doubleFromString)
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "longitude", fromJson: _doubleFromString)
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: "isActive")
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "version")
  int get version => throw _privateConstructorUsedError;
  @JsonKey(name: "companyId")
  int get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ZoneData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ZoneData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ZoneDataCopyWith<ZoneData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZoneDataCopyWith<$Res> {
  factory $ZoneDataCopyWith(ZoneData value, $Res Function(ZoneData) then) =
      _$ZoneDataCopyWithImpl<$Res, ZoneData>;
  @useResult
  $Res call({
    @JsonKey(name: "id") int id,
    @JsonKey(name: "name") String name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "latitude", fromJson: _doubleFromString) double latitude,
    @JsonKey(name: "longitude", fromJson: _doubleFromString) double longitude,
    @JsonKey(name: "isActive") bool isActive,
    @JsonKey(name: "version") int version,
    @JsonKey(name: "companyId") int companyId,
    @JsonKey(name: "createdAt") DateTime createdAt,
    @JsonKey(name: "updatedAt") DateTime updatedAt,
  });
}

/// @nodoc
class _$ZoneDataCopyWithImpl<$Res, $Val extends ZoneData>
    implements $ZoneDataCopyWith<$Res> {
  _$ZoneDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ZoneData
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
    Object? companyId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
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
        companyId: null == companyId
            ? _value.companyId
            : companyId // ignore: cast_nullable_to_non_nullable
                as int,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                as DateTime,
      ) as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ZoneDataImplCopyWith<$Res>
    implements $ZoneDataCopyWith<$Res> {
  factory _$$ZoneDataImplCopyWith(
    _$ZoneDataImpl value,
    $Res Function(_$ZoneDataImpl) then,
  ) = __$$ZoneDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "id") int id,
    @JsonKey(name: "name") String name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "latitude", fromJson: _doubleFromString) double latitude,
    @JsonKey(name: "longitude", fromJson: _doubleFromString) double longitude,
    @JsonKey(name: "isActive") bool isActive,
    @JsonKey(name: "version") int version,
    @JsonKey(name: "companyId") int companyId,
    @JsonKey(name: "createdAt") DateTime createdAt,
    @JsonKey(name: "updatedAt") DateTime updatedAt,
  });
}

/// @nodoc
class __$$ZoneDataImplCopyWithImpl<$Res>
    extends _$ZoneDataCopyWithImpl<$Res, _$ZoneDataImpl>
    implements _$$ZoneDataImplCopyWith<$Res> {
  __$$ZoneDataImplCopyWithImpl(
    _$ZoneDataImpl _value,
    $Res Function(_$ZoneDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ZoneData
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
    Object? companyId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$ZoneDataImpl(
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
        companyId: null == companyId
            ? _value.companyId
            : companyId // ignore: cast_nullable_to_non_nullable
                as int,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ZoneDataImpl implements _ZoneData {
  const _$ZoneDataImpl({
    @JsonKey(name: "id") required this.id,
    @JsonKey(name: "name") required this.name,
    @JsonKey(name: "description") this.description,
    @JsonKey(name: "latitude", fromJson: _doubleFromString)
    required this.latitude,
    @JsonKey(name: "longitude", fromJson: _doubleFromString)
    required this.longitude,
    @JsonKey(name: "isActive") required this.isActive,
    @JsonKey(name: "version") required this.version,
    @JsonKey(name: "companyId") required this.companyId,
    @JsonKey(name: "createdAt") required this.createdAt,
    @JsonKey(name: "updatedAt") required this.updatedAt,
  });

  factory _$ZoneDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZoneDataImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "latitude", fromJson: _doubleFromString)
  final double latitude;
  @override
  @JsonKey(name: "longitude", fromJson: _doubleFromString)
  final double longitude;
  @override
  @JsonKey(name: "isActive")
  final bool isActive;
  @override
  @JsonKey(name: "version")
  final int version;
  @override
  @JsonKey(name: "companyId")
  final int companyId;
  @override
  @JsonKey(name: "createdAt")
  final DateTime createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ZoneData(id: $id, name: $name, description: $description, latitude: $latitude, longitude: $longitude, isActive: $isActive, version: $version, companyId: $companyId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZoneDataImpl &&
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
            (identical(other.version, version) || other.version == version) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
        companyId,
        createdAt,
        updatedAt,
      );

  /// Create a copy of ZoneData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ZoneDataImplCopyWith<_$ZoneDataImpl> get copyWith =>
      __$$ZoneDataImplCopyWithImpl<_$ZoneDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZoneDataImplToJson(this);
  }
}

abstract class _ZoneData implements ZoneData {
  const factory _ZoneData({
    @JsonKey(name: "id") required final int id,
    @JsonKey(name: "name") required final String name,
    @JsonKey(name: "description") final String? description,
    @JsonKey(name: "latitude", fromJson: _doubleFromString)
    required final double latitude,
    @JsonKey(name: "longitude", fromJson: _doubleFromString)
    required final double longitude,
    @JsonKey(name: "isActive") required final bool isActive,
    @JsonKey(name: "version") required final int version,
    @JsonKey(name: "companyId") required final int companyId,
    @JsonKey(name: "createdAt") required final DateTime createdAt,
    @JsonKey(name: "updatedAt") required final DateTime updatedAt,
  }) = _$ZoneDataImpl;

  factory _ZoneData.fromJson(Map<String, dynamic> json) =
      _$ZoneDataImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "latitude", fromJson: _doubleFromString)
  double get latitude;
  @override
  @JsonKey(name: "longitude", fromJson: _doubleFromString)
  double get longitude;
  @override
  @JsonKey(name: "isActive")
  bool get isActive;
  @override
  @JsonKey(name: "version")
  int get version;
  @override
  @JsonKey(name: "companyId")
  int get companyId;
  @override
  @JsonKey(name: "createdAt")
  DateTime get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime get updatedAt;

  /// Create a copy of ZoneData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ZoneDataImplCopyWith<_$ZoneDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
