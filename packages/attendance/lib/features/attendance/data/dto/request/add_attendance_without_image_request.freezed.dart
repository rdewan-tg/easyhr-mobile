// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_attendance_without_image_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AddAttendanceWithoutImageRequest _$AddAttendanceWithoutImageRequestFromJson(
  Map<String, dynamic> json,
) {
  return _AddAttendanceWithoutImageRequest.fromJson(json);
}

/// @nodoc
mixin _$AddAttendanceWithoutImageRequest {
  @JsonKey(name: "address")
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: "latitude")
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "longitude")
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: "zone")
  String get zone => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  AttendanceStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: "transDay")
  int get transDay => throw _privateConstructorUsedError;
  @JsonKey(name: "transMonth")
  int get transMonth => throw _privateConstructorUsedError;
  @JsonKey(name: "transYear")
  int get transYear => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String get date => throw _privateConstructorUsedError;

  /// Serializes this AddAttendanceWithoutImageRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddAttendanceWithoutImageRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddAttendanceWithoutImageRequestCopyWith<AddAttendanceWithoutImageRequest>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAttendanceWithoutImageRequestCopyWith<$Res> {
  factory $AddAttendanceWithoutImageRequestCopyWith(
    AddAttendanceWithoutImageRequest value,
    $Res Function(AddAttendanceWithoutImageRequest) then,
  ) =
      _$AddAttendanceWithoutImageRequestCopyWithImpl<
        $Res,
        AddAttendanceWithoutImageRequest
      >;
  @useResult
  $Res call({
    @JsonKey(name: "address") String address,
    @JsonKey(name: "latitude") double latitude,
    @JsonKey(name: "longitude") double longitude,
    @JsonKey(name: "zone") String zone,
    @JsonKey(name: "status") AttendanceStatus status,
    @JsonKey(name: "transDay") int transDay,
    @JsonKey(name: "transMonth") int transMonth,
    @JsonKey(name: "transYear") int transYear,
    @JsonKey(name: "date") String date,
  });
}

/// @nodoc
class _$AddAttendanceWithoutImageRequestCopyWithImpl<
  $Res,
  $Val extends AddAttendanceWithoutImageRequest
>
    implements $AddAttendanceWithoutImageRequestCopyWith<$Res> {
  _$AddAttendanceWithoutImageRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddAttendanceWithoutImageRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? zone = null,
    Object? status = null,
    Object? transDay = null,
    Object? transMonth = null,
    Object? transYear = null,
    Object? date = null,
  }) {
    return _then(
      _value.copyWith(
            address: null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String,
            latitude: null == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                      as double,
            longitude: null == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                      as double,
            zone: null == zone
                ? _value.zone
                : zone // ignore: cast_nullable_to_non_nullable
                      as String,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AddAttendanceWithoutImageRequestImplCopyWith<$Res>
    implements $AddAttendanceWithoutImageRequestCopyWith<$Res> {
  factory _$$AddAttendanceWithoutImageRequestImplCopyWith(
    _$AddAttendanceWithoutImageRequestImpl value,
    $Res Function(_$AddAttendanceWithoutImageRequestImpl) then,
  ) = __$$AddAttendanceWithoutImageRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "address") String address,
    @JsonKey(name: "latitude") double latitude,
    @JsonKey(name: "longitude") double longitude,
    @JsonKey(name: "zone") String zone,
    @JsonKey(name: "status") AttendanceStatus status,
    @JsonKey(name: "transDay") int transDay,
    @JsonKey(name: "transMonth") int transMonth,
    @JsonKey(name: "transYear") int transYear,
    @JsonKey(name: "date") String date,
  });
}

/// @nodoc
class __$$AddAttendanceWithoutImageRequestImplCopyWithImpl<$Res>
    extends
        _$AddAttendanceWithoutImageRequestCopyWithImpl<
          $Res,
          _$AddAttendanceWithoutImageRequestImpl
        >
    implements _$$AddAttendanceWithoutImageRequestImplCopyWith<$Res> {
  __$$AddAttendanceWithoutImageRequestImplCopyWithImpl(
    _$AddAttendanceWithoutImageRequestImpl _value,
    $Res Function(_$AddAttendanceWithoutImageRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddAttendanceWithoutImageRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? zone = null,
    Object? status = null,
    Object? transDay = null,
    Object? transMonth = null,
    Object? transYear = null,
    Object? date = null,
  }) {
    return _then(
      _$AddAttendanceWithoutImageRequestImpl(
        address: null == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String,
        latitude: null == latitude
            ? _value.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                  as double,
        longitude: null == longitude
            ? _value.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                  as double,
        zone: null == zone
            ? _value.zone
            : zone // ignore: cast_nullable_to_non_nullable
                  as String,
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AddAttendanceWithoutImageRequestImpl
    implements _AddAttendanceWithoutImageRequest {
  _$AddAttendanceWithoutImageRequestImpl({
    @JsonKey(name: "address") required this.address,
    @JsonKey(name: "latitude") required this.latitude,
    @JsonKey(name: "longitude") required this.longitude,
    @JsonKey(name: "zone") required this.zone,
    @JsonKey(name: "status") required this.status,
    @JsonKey(name: "transDay") required this.transDay,
    @JsonKey(name: "transMonth") required this.transMonth,
    @JsonKey(name: "transYear") required this.transYear,
    @JsonKey(name: "date") required this.date,
  });

  factory _$AddAttendanceWithoutImageRequestImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$AddAttendanceWithoutImageRequestImplFromJson(json);

  @override
  @JsonKey(name: "address")
  final String address;
  @override
  @JsonKey(name: "latitude")
  final double latitude;
  @override
  @JsonKey(name: "longitude")
  final double longitude;
  @override
  @JsonKey(name: "zone")
  final String zone;
  @override
  @JsonKey(name: "status")
  final AttendanceStatus status;
  @override
  @JsonKey(name: "transDay")
  final int transDay;
  @override
  @JsonKey(name: "transMonth")
  final int transMonth;
  @override
  @JsonKey(name: "transYear")
  final int transYear;
  @override
  @JsonKey(name: "date")
  final String date;

  @override
  String toString() {
    return 'AddAttendanceWithoutImageRequest(address: $address, latitude: $latitude, longitude: $longitude, zone: $zone, status: $status, transDay: $transDay, transMonth: $transMonth, transYear: $transYear, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAttendanceWithoutImageRequestImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.zone, zone) || other.zone == zone) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.transDay, transDay) ||
                other.transDay == transDay) &&
            (identical(other.transMonth, transMonth) ||
                other.transMonth == transMonth) &&
            (identical(other.transYear, transYear) ||
                other.transYear == transYear) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    address,
    latitude,
    longitude,
    zone,
    status,
    transDay,
    transMonth,
    transYear,
    date,
  );

  /// Create a copy of AddAttendanceWithoutImageRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAttendanceWithoutImageRequestImplCopyWith<
    _$AddAttendanceWithoutImageRequestImpl
  >
  get copyWith =>
      __$$AddAttendanceWithoutImageRequestImplCopyWithImpl<
        _$AddAttendanceWithoutImageRequestImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddAttendanceWithoutImageRequestImplToJson(this);
  }
}

abstract class _AddAttendanceWithoutImageRequest
    implements AddAttendanceWithoutImageRequest {
  factory _AddAttendanceWithoutImageRequest({
    @JsonKey(name: "address") required final String address,
    @JsonKey(name: "latitude") required final double latitude,
    @JsonKey(name: "longitude") required final double longitude,
    @JsonKey(name: "zone") required final String zone,
    @JsonKey(name: "status") required final AttendanceStatus status,
    @JsonKey(name: "transDay") required final int transDay,
    @JsonKey(name: "transMonth") required final int transMonth,
    @JsonKey(name: "transYear") required final int transYear,
    @JsonKey(name: "date") required final String date,
  }) = _$AddAttendanceWithoutImageRequestImpl;

  factory _AddAttendanceWithoutImageRequest.fromJson(
    Map<String, dynamic> json,
  ) = _$AddAttendanceWithoutImageRequestImpl.fromJson;

  @override
  @JsonKey(name: "address")
  String get address;
  @override
  @JsonKey(name: "latitude")
  double get latitude;
  @override
  @JsonKey(name: "longitude")
  double get longitude;
  @override
  @JsonKey(name: "zone")
  String get zone;
  @override
  @JsonKey(name: "status")
  AttendanceStatus get status;
  @override
  @JsonKey(name: "transDay")
  int get transDay;
  @override
  @JsonKey(name: "transMonth")
  int get transMonth;
  @override
  @JsonKey(name: "transYear")
  int get transYear;
  @override
  @JsonKey(name: "date")
  String get date;

  /// Create a copy of AddAttendanceWithoutImageRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddAttendanceWithoutImageRequestImplCopyWith<
    _$AddAttendanceWithoutImageRequestImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
