// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_attendance_state_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LastAttendanceStateResponse _$LastAttendanceStateResponseFromJson(
  Map<String, dynamic> json,
) {
  return _LastAttendanceStateResponse.fromJson(json);
}

/// @nodoc
mixin _$LastAttendanceStateResponse {
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  LastAttendanceStateData? get data => throw _privateConstructorUsedError;

  /// Serializes this LastAttendanceStateResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LastAttendanceStateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LastAttendanceStateResponseCopyWith<LastAttendanceStateResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastAttendanceStateResponseCopyWith<$Res> {
  factory $LastAttendanceStateResponseCopyWith(
    LastAttendanceStateResponse value,
    $Res Function(LastAttendanceStateResponse) then,
  ) = _$LastAttendanceStateResponseCopyWithImpl<$Res,
      LastAttendanceStateResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "status") String status,
    @JsonKey(name: "data") LastAttendanceStateData? data,
  });

  $LastAttendanceStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$LastAttendanceStateResponseCopyWithImpl<$Res,
        $Val extends LastAttendanceStateResponse>
    implements $LastAttendanceStateResponseCopyWith<$Res> {
  _$LastAttendanceStateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LastAttendanceStateResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = freezed}) {
    return _then(
      _value.copyWith(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                as String,
        data: freezed == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                as LastAttendanceStateData?,
      ) as $Val,
    );
  }

  /// Create a copy of LastAttendanceStateResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastAttendanceStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LastAttendanceStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LastAttendanceStateResponseImplCopyWith<$Res>
    implements $LastAttendanceStateResponseCopyWith<$Res> {
  factory _$$LastAttendanceStateResponseImplCopyWith(
    _$LastAttendanceStateResponseImpl value,
    $Res Function(_$LastAttendanceStateResponseImpl) then,
  ) = __$$LastAttendanceStateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "status") String status,
    @JsonKey(name: "data") LastAttendanceStateData? data,
  });

  @override
  $LastAttendanceStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$LastAttendanceStateResponseImplCopyWithImpl<$Res>
    extends _$LastAttendanceStateResponseCopyWithImpl<$Res,
        _$LastAttendanceStateResponseImpl>
    implements _$$LastAttendanceStateResponseImplCopyWith<$Res> {
  __$$LastAttendanceStateResponseImplCopyWithImpl(
    _$LastAttendanceStateResponseImpl _value,
    $Res Function(_$LastAttendanceStateResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LastAttendanceStateResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = freezed}) {
    return _then(
      _$LastAttendanceStateResponseImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                as String,
        data: freezed == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                as LastAttendanceStateData?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LastAttendanceStateResponseImpl
    implements _LastAttendanceStateResponse {
  const _$LastAttendanceStateResponseImpl({
    @JsonKey(name: "status") required this.status,
    @JsonKey(name: "data") this.data,
  });

  factory _$LastAttendanceStateResponseImpl.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$$LastAttendanceStateResponseImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "data")
  final LastAttendanceStateData? data;

  @override
  String toString() {
    return 'LastAttendanceStateResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastAttendanceStateResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of LastAttendanceStateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LastAttendanceStateResponseImplCopyWith<_$LastAttendanceStateResponseImpl>
      get copyWith => __$$LastAttendanceStateResponseImplCopyWithImpl<
          _$LastAttendanceStateResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LastAttendanceStateResponseImplToJson(this);
  }
}

abstract class _LastAttendanceStateResponse
    implements LastAttendanceStateResponse {
  const factory _LastAttendanceStateResponse({
    @JsonKey(name: "status") required final String status,
    @JsonKey(name: "data") final LastAttendanceStateData? data,
  }) = _$LastAttendanceStateResponseImpl;

  factory _LastAttendanceStateResponse.fromJson(Map<String, dynamic> json) =
      _$LastAttendanceStateResponseImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "data")
  LastAttendanceStateData? get data;

  /// Create a copy of LastAttendanceStateResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LastAttendanceStateResponseImplCopyWith<_$LastAttendanceStateResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LastAttendanceStateData _$LastAttendanceStateDataFromJson(
  Map<String, dynamic> json,
) {
  return _LastAttendanceStateData.fromJson(json);
}

/// @nodoc
mixin _$LastAttendanceStateData {
  @JsonKey(name: 'status')
  AttendanceStatus get status => throw _privateConstructorUsedError;

  /// Serializes this LastAttendanceStateData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LastAttendanceStateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LastAttendanceStateDataCopyWith<LastAttendanceStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastAttendanceStateDataCopyWith<$Res> {
  factory $LastAttendanceStateDataCopyWith(
    LastAttendanceStateData value,
    $Res Function(LastAttendanceStateData) then,
  ) = _$LastAttendanceStateDataCopyWithImpl<$Res, LastAttendanceStateData>;
  @useResult
  $Res call({@JsonKey(name: 'status') AttendanceStatus status});
}

/// @nodoc
class _$LastAttendanceStateDataCopyWithImpl<$Res,
        $Val extends LastAttendanceStateData>
    implements $LastAttendanceStateDataCopyWith<$Res> {
  _$LastAttendanceStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LastAttendanceStateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null}) {
    return _then(
      _value.copyWith(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                as AttendanceStatus,
      ) as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LastAttendanceStateDataImplCopyWith<$Res>
    implements $LastAttendanceStateDataCopyWith<$Res> {
  factory _$$LastAttendanceStateDataImplCopyWith(
    _$LastAttendanceStateDataImpl value,
    $Res Function(_$LastAttendanceStateDataImpl) then,
  ) = __$$LastAttendanceStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'status') AttendanceStatus status});
}

/// @nodoc
class __$$LastAttendanceStateDataImplCopyWithImpl<$Res>
    extends _$LastAttendanceStateDataCopyWithImpl<$Res,
        _$LastAttendanceStateDataImpl>
    implements _$$LastAttendanceStateDataImplCopyWith<$Res> {
  __$$LastAttendanceStateDataImplCopyWithImpl(
    _$LastAttendanceStateDataImpl _value,
    $Res Function(_$LastAttendanceStateDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LastAttendanceStateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null}) {
    return _then(
      _$LastAttendanceStateDataImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                as AttendanceStatus,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LastAttendanceStateDataImpl implements _LastAttendanceStateData {
  const _$LastAttendanceStateDataImpl({
    @JsonKey(name: 'status') required this.status,
  });

  factory _$LastAttendanceStateDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LastAttendanceStateDataImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final AttendanceStatus status;

  @override
  String toString() {
    return 'LastAttendanceStateData(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastAttendanceStateDataImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of LastAttendanceStateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LastAttendanceStateDataImplCopyWith<_$LastAttendanceStateDataImpl>
      get copyWith => __$$LastAttendanceStateDataImplCopyWithImpl<
          _$LastAttendanceStateDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LastAttendanceStateDataImplToJson(this);
  }
}

abstract class _LastAttendanceStateData implements LastAttendanceStateData {
  const factory _LastAttendanceStateData({
    @JsonKey(name: 'status') required final AttendanceStatus status,
  }) = _$LastAttendanceStateDataImpl;

  factory _LastAttendanceStateData.fromJson(Map<String, dynamic> json) =
      _$LastAttendanceStateDataImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  AttendanceStatus get status;

  /// Create a copy of LastAttendanceStateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LastAttendanceStateDataImplCopyWith<_$LastAttendanceStateDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
