// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AttendanceResponse _$AttendanceResponseFromJson(Map<String, dynamic> json) {
  return _AttendanceResponse.fromJson(json);
}

/// @nodoc
mixin _$AttendanceResponse {
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<AttendanceData> get data => throw _privateConstructorUsedError;

  /// Serializes this AttendanceResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceResponseCopyWith<AttendanceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceResponseCopyWith<$Res> {
  factory $AttendanceResponseCopyWith(
    AttendanceResponse value,
    $Res Function(AttendanceResponse) then,
  ) = _$AttendanceResponseCopyWithImpl<$Res, AttendanceResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'status') String status,
    @JsonKey(name: 'data') List<AttendanceData> data,
  });
}

/// @nodoc
class _$AttendanceResponseCopyWithImpl<$Res, $Val extends AttendanceResponse>
    implements $AttendanceResponseCopyWith<$Res> {
  _$AttendanceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceResponse
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
                as List<AttendanceData>,
      ) as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AttendanceResponseImplCopyWith<$Res>
    implements $AttendanceResponseCopyWith<$Res> {
  factory _$$AttendanceResponseImplCopyWith(
    _$AttendanceResponseImpl value,
    $Res Function(_$AttendanceResponseImpl) then,
  ) = __$$AttendanceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'status') String status,
    @JsonKey(name: 'data') List<AttendanceData> data,
  });
}

/// @nodoc
class __$$AttendanceResponseImplCopyWithImpl<$Res>
    extends _$AttendanceResponseCopyWithImpl<$Res, _$AttendanceResponseImpl>
    implements _$$AttendanceResponseImplCopyWith<$Res> {
  __$$AttendanceResponseImplCopyWithImpl(
    _$AttendanceResponseImpl _value,
    $Res Function(_$AttendanceResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = null}) {
    return _then(
      _$AttendanceResponseImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                as String,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                as List<AttendanceData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceResponseImpl implements _AttendanceResponse {
  const _$AttendanceResponseImpl({
    @JsonKey(name: 'status') required this.status,
    @JsonKey(name: 'data') final List<AttendanceData> data = const [],
  }) : _data = data;

  factory _$AttendanceResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceResponseImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String status;
  final List<AttendanceData> _data;
  @override
  @JsonKey(name: 'data')
  List<AttendanceData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AttendanceResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceResponseImpl &&
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

  /// Create a copy of AttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceResponseImplCopyWith<_$AttendanceResponseImpl> get copyWith =>
      __$$AttendanceResponseImplCopyWithImpl<_$AttendanceResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceResponseImplToJson(this);
  }
}

abstract class _AttendanceResponse implements AttendanceResponse {
  const factory _AttendanceResponse({
    @JsonKey(name: 'status') required final String status,
    @JsonKey(name: 'data') final List<AttendanceData> data,
  }) = _$AttendanceResponseImpl;

  factory _AttendanceResponse.fromJson(Map<String, dynamic> json) =
      _$AttendanceResponseImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'data')
  List<AttendanceData> get data;

  /// Create a copy of AttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceResponseImplCopyWith<_$AttendanceResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttendanceData _$AttendanceDataFromJson(Map<String, dynamic> json) {
  return _AttendanceData.fromJson(json);
}

/// @nodoc
mixin _$AttendanceData {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude')
  String get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  String get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'zone')
  String get zone => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  AttendanceStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'transDay')
  int get transDay => throw _privateConstructorUsedError;
  @JsonKey(name: 'transMonth')
  int get transMonth => throw _privateConstructorUsedError;
  @JsonKey(name: 'transYear')
  int get transYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'companyId')
  int get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this AttendanceData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceDataCopyWith<AttendanceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceDataCopyWith<$Res> {
  factory $AttendanceDataCopyWith(
    AttendanceData value,
    $Res Function(AttendanceData) then,
  ) = _$AttendanceDataCopyWithImpl<$Res, AttendanceData>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'userId') int userId,
    @JsonKey(name: 'address') String address,
    @JsonKey(name: 'latitude') String latitude,
    @JsonKey(name: 'longitude') String longitude,
    @JsonKey(name: 'zone') String zone,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'status') AttendanceStatus status,
    @JsonKey(name: 'transDay') int transDay,
    @JsonKey(name: 'transMonth') int transMonth,
    @JsonKey(name: 'transYear') int transYear,
    @JsonKey(name: 'date') String date,
    @JsonKey(name: 'companyId') int companyId,
    @JsonKey(name: 'createdAt') String createdAt,
    @JsonKey(name: 'updatedAt') String updatedAt,
  });
}

/// @nodoc
class _$AttendanceDataCopyWithImpl<$Res, $Val extends AttendanceData>
    implements $AttendanceDataCopyWith<$Res> {
  _$AttendanceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? address = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? zone = null,
    Object? image = freezed,
    Object? status = null,
    Object? transDay = null,
    Object? transMonth = null,
    Object? transYear = null,
    Object? date = null,
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
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                as int,
        address: null == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                as String,
        latitude: null == latitude
            ? _value.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                as String,
        longitude: null == longitude
            ? _value.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                as String,
        zone: null == zone
            ? _value.zone
            : zone // ignore: cast_nullable_to_non_nullable
                as String,
        image: freezed == image
            ? _value.image
            : image // ignore: cast_nullable_to_non_nullable
                as String?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                as AttendanceStatus,
        transDay: null == transDay
            ? _value.transDay
            : transDay // ignore: cast_nullable_to_non_nullable
                as int,
        transMonth: null == transMonth
            ? _value.transMonth
            : transMonth // ignore: cast_nullable_to_non_nullable
                as int,
        transYear: null == transYear
            ? _value.transYear
            : transYear // ignore: cast_nullable_to_non_nullable
                as int,
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                as String,
        companyId: null == companyId
            ? _value.companyId
            : companyId // ignore: cast_nullable_to_non_nullable
                as int,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                as String,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                as String,
      ) as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AttendanceDataImplCopyWith<$Res>
    implements $AttendanceDataCopyWith<$Res> {
  factory _$$AttendanceDataImplCopyWith(
    _$AttendanceDataImpl value,
    $Res Function(_$AttendanceDataImpl) then,
  ) = __$$AttendanceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'userId') int userId,
    @JsonKey(name: 'address') String address,
    @JsonKey(name: 'latitude') String latitude,
    @JsonKey(name: 'longitude') String longitude,
    @JsonKey(name: 'zone') String zone,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'status') AttendanceStatus status,
    @JsonKey(name: 'transDay') int transDay,
    @JsonKey(name: 'transMonth') int transMonth,
    @JsonKey(name: 'transYear') int transYear,
    @JsonKey(name: 'date') String date,
    @JsonKey(name: 'companyId') int companyId,
    @JsonKey(name: 'createdAt') String createdAt,
    @JsonKey(name: 'updatedAt') String updatedAt,
  });
}

/// @nodoc
class __$$AttendanceDataImplCopyWithImpl<$Res>
    extends _$AttendanceDataCopyWithImpl<$Res, _$AttendanceDataImpl>
    implements _$$AttendanceDataImplCopyWith<$Res> {
  __$$AttendanceDataImplCopyWithImpl(
    _$AttendanceDataImpl _value,
    $Res Function(_$AttendanceDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttendanceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? address = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? zone = null,
    Object? image = freezed,
    Object? status = null,
    Object? transDay = null,
    Object? transMonth = null,
    Object? transYear = null,
    Object? date = null,
    Object? companyId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$AttendanceDataImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                as int,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                as int,
        address: null == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                as String,
        latitude: null == latitude
            ? _value.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                as String,
        longitude: null == longitude
            ? _value.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                as String,
        zone: null == zone
            ? _value.zone
            : zone // ignore: cast_nullable_to_non_nullable
                as String,
        image: freezed == image
            ? _value.image
            : image // ignore: cast_nullable_to_non_nullable
                as String?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                as AttendanceStatus,
        transDay: null == transDay
            ? _value.transDay
            : transDay // ignore: cast_nullable_to_non_nullable
                as int,
        transMonth: null == transMonth
            ? _value.transMonth
            : transMonth // ignore: cast_nullable_to_non_nullable
                as int,
        transYear: null == transYear
            ? _value.transYear
            : transYear // ignore: cast_nullable_to_non_nullable
                as int,
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                as String,
        companyId: null == companyId
            ? _value.companyId
            : companyId // ignore: cast_nullable_to_non_nullable
                as int,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                as String,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceDataImpl implements _AttendanceData {
  const _$AttendanceDataImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'userId') required this.userId,
    @JsonKey(name: 'address') required this.address,
    @JsonKey(name: 'latitude') required this.latitude,
    @JsonKey(name: 'longitude') required this.longitude,
    @JsonKey(name: 'zone') required this.zone,
    @JsonKey(name: 'image') this.image,
    @JsonKey(name: 'status') required this.status,
    @JsonKey(name: 'transDay') required this.transDay,
    @JsonKey(name: 'transMonth') required this.transMonth,
    @JsonKey(name: 'transYear') required this.transYear,
    @JsonKey(name: 'date') required this.date,
    @JsonKey(name: 'companyId') required this.companyId,
    @JsonKey(name: 'createdAt') required this.createdAt,
    @JsonKey(name: 'updatedAt') required this.updatedAt,
  });

  factory _$AttendanceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'userId')
  final int userId;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'latitude')
  final String latitude;
  @override
  @JsonKey(name: 'longitude')
  final String longitude;
  @override
  @JsonKey(name: 'zone')
  final String zone;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'status')
  final AttendanceStatus status;
  @override
  @JsonKey(name: 'transDay')
  final int transDay;
  @override
  @JsonKey(name: 'transMonth')
  final int transMonth;
  @override
  @JsonKey(name: 'transYear')
  final int transYear;
  @override
  @JsonKey(name: 'date')
  final String date;
  @override
  @JsonKey(name: 'companyId')
  final int companyId;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String updatedAt;

  @override
  String toString() {
    return 'AttendanceData(id: $id, userId: $userId, address: $address, latitude: $latitude, longitude: $longitude, zone: $zone, image: $image, status: $status, transDay: $transDay, transMonth: $transMonth, transYear: $transYear, date: $date, companyId: $companyId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.zone, zone) || other.zone == zone) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.transDay, transDay) ||
                other.transDay == transDay) &&
            (identical(other.transMonth, transMonth) ||
                other.transMonth == transMonth) &&
            (identical(other.transYear, transYear) ||
                other.transYear == transYear) &&
            (identical(other.date, date) || other.date == date) &&
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
        userId,
        address,
        latitude,
        longitude,
        zone,
        image,
        status,
        transDay,
        transMonth,
        transYear,
        date,
        companyId,
        createdAt,
        updatedAt,
      );

  /// Create a copy of AttendanceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceDataImplCopyWith<_$AttendanceDataImpl> get copyWith =>
      __$$AttendanceDataImplCopyWithImpl<_$AttendanceDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceDataImplToJson(this);
  }
}

abstract class _AttendanceData implements AttendanceData {
  const factory _AttendanceData({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'userId') required final int userId,
    @JsonKey(name: 'address') required final String address,
    @JsonKey(name: 'latitude') required final String latitude,
    @JsonKey(name: 'longitude') required final String longitude,
    @JsonKey(name: 'zone') required final String zone,
    @JsonKey(name: 'image') final String? image,
    @JsonKey(name: 'status') required final AttendanceStatus status,
    @JsonKey(name: 'transDay') required final int transDay,
    @JsonKey(name: 'transMonth') required final int transMonth,
    @JsonKey(name: 'transYear') required final int transYear,
    @JsonKey(name: 'date') required final String date,
    @JsonKey(name: 'companyId') required final int companyId,
    @JsonKey(name: 'createdAt') required final String createdAt,
    @JsonKey(name: 'updatedAt') required final String updatedAt,
  }) = _$AttendanceDataImpl;

  factory _AttendanceData.fromJson(Map<String, dynamic> json) =
      _$AttendanceDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'userId')
  int get userId;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'latitude')
  String get latitude;
  @override
  @JsonKey(name: 'longitude')
  String get longitude;
  @override
  @JsonKey(name: 'zone')
  String get zone;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'status')
  AttendanceStatus get status;
  @override
  @JsonKey(name: 'transDay')
  int get transDay;
  @override
  @JsonKey(name: 'transMonth')
  int get transMonth;
  @override
  @JsonKey(name: 'transYear')
  int get transYear;
  @override
  @JsonKey(name: 'date')
  String get date;
  @override
  @JsonKey(name: 'companyId')
  int get companyId;
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String get updatedAt;

  /// Create a copy of AttendanceData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceDataImplCopyWith<_$AttendanceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
