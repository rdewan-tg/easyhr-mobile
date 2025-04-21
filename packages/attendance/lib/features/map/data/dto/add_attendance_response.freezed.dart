// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_attendance_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AddAttendanceResponse _$AddAttendanceResponseFromJson(
  Map<String, dynamic> json,
) {
  return _AddAttendanceResponse.fromJson(json);
}

/// @nodoc
mixin _$AddAttendanceResponse {
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  AddAttendanceData get data => throw _privateConstructorUsedError;

  /// Serializes this AddAttendanceResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddAttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddAttendanceResponseCopyWith<AddAttendanceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAttendanceResponseCopyWith<$Res> {
  factory $AddAttendanceResponseCopyWith(
    AddAttendanceResponse value,
    $Res Function(AddAttendanceResponse) then,
  ) = _$AddAttendanceResponseCopyWithImpl<$Res, AddAttendanceResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'status') String status,
    @JsonKey(name: 'data') AddAttendanceData data,
  });

  $AddAttendanceDataCopyWith<$Res> get data;
}

/// @nodoc
class _$AddAttendanceResponseCopyWithImpl<
  $Res,
  $Val extends AddAttendanceResponse
>
    implements $AddAttendanceResponseCopyWith<$Res> {
  _$AddAttendanceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddAttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = null}) {
    return _then(
      _value.copyWith(
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            data:
                null == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as AddAttendanceData,
          )
          as $Val,
    );
  }

  /// Create a copy of AddAttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddAttendanceDataCopyWith<$Res> get data {
    return $AddAttendanceDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddAttendanceResponseImplCopyWith<$Res>
    implements $AddAttendanceResponseCopyWith<$Res> {
  factory _$$AddAttendanceResponseImplCopyWith(
    _$AddAttendanceResponseImpl value,
    $Res Function(_$AddAttendanceResponseImpl) then,
  ) = __$$AddAttendanceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'status') String status,
    @JsonKey(name: 'data') AddAttendanceData data,
  });

  @override
  $AddAttendanceDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$AddAttendanceResponseImplCopyWithImpl<$Res>
    extends
        _$AddAttendanceResponseCopyWithImpl<$Res, _$AddAttendanceResponseImpl>
    implements _$$AddAttendanceResponseImplCopyWith<$Res> {
  __$$AddAttendanceResponseImplCopyWithImpl(
    _$AddAttendanceResponseImpl _value,
    $Res Function(_$AddAttendanceResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddAttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = null}) {
    return _then(
      _$AddAttendanceResponseImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        data:
            null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                    as AddAttendanceData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AddAttendanceResponseImpl implements _AddAttendanceResponse {
  const _$AddAttendanceResponseImpl({
    @JsonKey(name: 'status') required this.status,
    @JsonKey(name: 'data') required this.data,
  });

  factory _$AddAttendanceResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddAttendanceResponseImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'data')
  final AddAttendanceData data;

  @override
  String toString() {
    return 'AddAttendanceResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAttendanceResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of AddAttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAttendanceResponseImplCopyWith<_$AddAttendanceResponseImpl>
  get copyWith =>
      __$$AddAttendanceResponseImplCopyWithImpl<_$AddAttendanceResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AddAttendanceResponseImplToJson(this);
  }
}

abstract class _AddAttendanceResponse implements AddAttendanceResponse {
  const factory _AddAttendanceResponse({
    @JsonKey(name: 'status') required final String status,
    @JsonKey(name: 'data') required final AddAttendanceData data,
  }) = _$AddAttendanceResponseImpl;

  factory _AddAttendanceResponse.fromJson(Map<String, dynamic> json) =
      _$AddAttendanceResponseImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'data')
  AddAttendanceData get data;

  /// Create a copy of AddAttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddAttendanceResponseImplCopyWith<_$AddAttendanceResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

AddAttendanceData _$AddAttendanceDataFromJson(Map<String, dynamic> json) {
  return _AddAttendanceData.fromJson(json);
}

/// @nodoc
mixin _$AddAttendanceData {
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
  String get image => throw _privateConstructorUsedError;
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

  /// Serializes this AddAttendanceData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddAttendanceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddAttendanceDataCopyWith<AddAttendanceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAttendanceDataCopyWith<$Res> {
  factory $AddAttendanceDataCopyWith(
    AddAttendanceData value,
    $Res Function(AddAttendanceData) then,
  ) = _$AddAttendanceDataCopyWithImpl<$Res, AddAttendanceData>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'userId') int userId,
    @JsonKey(name: 'address') String address,
    @JsonKey(name: 'latitude') String latitude,
    @JsonKey(name: 'longitude') String longitude,
    @JsonKey(name: 'zone') String zone,
    @JsonKey(name: 'image') String image,
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
class _$AddAttendanceDataCopyWithImpl<$Res, $Val extends AddAttendanceData>
    implements $AddAttendanceDataCopyWith<$Res> {
  _$AddAttendanceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddAttendanceData
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
    Object? image = null,
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
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as int,
            address:
                null == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
                        as String,
            latitude:
                null == latitude
                    ? _value.latitude
                    : latitude // ignore: cast_nullable_to_non_nullable
                        as String,
            longitude:
                null == longitude
                    ? _value.longitude
                    : longitude // ignore: cast_nullable_to_non_nullable
                        as String,
            zone:
                null == zone
                    ? _value.zone
                    : zone // ignore: cast_nullable_to_non_nullable
                        as String,
            image:
                null == image
                    ? _value.image
                    : image // ignore: cast_nullable_to_non_nullable
                        as String,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as AttendanceStatus,
            transDay:
                null == transDay
                    ? _value.transDay
                    : transDay // ignore: cast_nullable_to_non_nullable
                        as int,
            transMonth:
                null == transMonth
                    ? _value.transMonth
                    : transMonth // ignore: cast_nullable_to_non_nullable
                        as int,
            transYear:
                null == transYear
                    ? _value.transYear
                    : transYear // ignore: cast_nullable_to_non_nullable
                        as int,
            date:
                null == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as String,
            companyId:
                null == companyId
                    ? _value.companyId
                    : companyId // ignore: cast_nullable_to_non_nullable
                        as int,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as String,
            updatedAt:
                null == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AddAttendanceDataImplCopyWith<$Res>
    implements $AddAttendanceDataCopyWith<$Res> {
  factory _$$AddAttendanceDataImplCopyWith(
    _$AddAttendanceDataImpl value,
    $Res Function(_$AddAttendanceDataImpl) then,
  ) = __$$AddAttendanceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'userId') int userId,
    @JsonKey(name: 'address') String address,
    @JsonKey(name: 'latitude') String latitude,
    @JsonKey(name: 'longitude') String longitude,
    @JsonKey(name: 'zone') String zone,
    @JsonKey(name: 'image') String image,
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
class __$$AddAttendanceDataImplCopyWithImpl<$Res>
    extends _$AddAttendanceDataCopyWithImpl<$Res, _$AddAttendanceDataImpl>
    implements _$$AddAttendanceDataImplCopyWith<$Res> {
  __$$AddAttendanceDataImplCopyWithImpl(
    _$AddAttendanceDataImpl _value,
    $Res Function(_$AddAttendanceDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddAttendanceData
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
    Object? image = null,
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
      _$AddAttendanceDataImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as int,
        address:
            null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                    as String,
        latitude:
            null == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                    as String,
        longitude:
            null == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                    as String,
        zone:
            null == zone
                ? _value.zone
                : zone // ignore: cast_nullable_to_non_nullable
                    as String,
        image:
            null == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                    as String,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as AttendanceStatus,
        transDay:
            null == transDay
                ? _value.transDay
                : transDay // ignore: cast_nullable_to_non_nullable
                    as int,
        transMonth:
            null == transMonth
                ? _value.transMonth
                : transMonth // ignore: cast_nullable_to_non_nullable
                    as int,
        transYear:
            null == transYear
                ? _value.transYear
                : transYear // ignore: cast_nullable_to_non_nullable
                    as int,
        date:
            null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as String,
        companyId:
            null == companyId
                ? _value.companyId
                : companyId // ignore: cast_nullable_to_non_nullable
                    as int,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as String,
        updatedAt:
            null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AddAttendanceDataImpl implements _AddAttendanceData {
  const _$AddAttendanceDataImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'userId') required this.userId,
    @JsonKey(name: 'address') required this.address,
    @JsonKey(name: 'latitude') required this.latitude,
    @JsonKey(name: 'longitude') required this.longitude,
    @JsonKey(name: 'zone') required this.zone,
    @JsonKey(name: 'image') required this.image,
    @JsonKey(name: 'status') required this.status,
    @JsonKey(name: 'transDay') required this.transDay,
    @JsonKey(name: 'transMonth') required this.transMonth,
    @JsonKey(name: 'transYear') required this.transYear,
    @JsonKey(name: 'date') required this.date,
    @JsonKey(name: 'companyId') required this.companyId,
    @JsonKey(name: 'createdAt') required this.createdAt,
    @JsonKey(name: 'updatedAt') required this.updatedAt,
  });

  factory _$AddAttendanceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddAttendanceDataImplFromJson(json);

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
  final String image;
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
    return 'AddAttendanceData(id: $id, userId: $userId, address: $address, latitude: $latitude, longitude: $longitude, zone: $zone, image: $image, status: $status, transDay: $transDay, transMonth: $transMonth, transYear: $transYear, date: $date, companyId: $companyId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAttendanceDataImpl &&
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

  /// Create a copy of AddAttendanceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAttendanceDataImplCopyWith<_$AddAttendanceDataImpl> get copyWith =>
      __$$AddAttendanceDataImplCopyWithImpl<_$AddAttendanceDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AddAttendanceDataImplToJson(this);
  }
}

abstract class _AddAttendanceData implements AddAttendanceData {
  const factory _AddAttendanceData({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'userId') required final int userId,
    @JsonKey(name: 'address') required final String address,
    @JsonKey(name: 'latitude') required final String latitude,
    @JsonKey(name: 'longitude') required final String longitude,
    @JsonKey(name: 'zone') required final String zone,
    @JsonKey(name: 'image') required final String image,
    @JsonKey(name: 'status') required final AttendanceStatus status,
    @JsonKey(name: 'transDay') required final int transDay,
    @JsonKey(name: 'transMonth') required final int transMonth,
    @JsonKey(name: 'transYear') required final int transYear,
    @JsonKey(name: 'date') required final String date,
    @JsonKey(name: 'companyId') required final int companyId,
    @JsonKey(name: 'createdAt') required final String createdAt,
    @JsonKey(name: 'updatedAt') required final String updatedAt,
  }) = _$AddAttendanceDataImpl;

  factory _AddAttendanceData.fromJson(Map<String, dynamic> json) =
      _$AddAttendanceDataImpl.fromJson;

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
  String get image;
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

  /// Create a copy of AddAttendanceData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddAttendanceDataImplCopyWith<_$AddAttendanceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
