// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_setting_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CompanySettingResponse _$CompanySettingResponseFromJson(
  Map<String, dynamic> json,
) {
  return _CompanySettingResponse.fromJson(json);
}

/// @nodoc
mixin _$CompanySettingResponse {
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  CompanySettingData get data => throw _privateConstructorUsedError;

  /// Serializes this CompanySettingResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompanySettingResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompanySettingResponseCopyWith<CompanySettingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanySettingResponseCopyWith<$Res> {
  factory $CompanySettingResponseCopyWith(
    CompanySettingResponse value,
    $Res Function(CompanySettingResponse) then,
  ) = _$CompanySettingResponseCopyWithImpl<$Res, CompanySettingResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "status") String status,
    @JsonKey(name: "data") CompanySettingData data,
  });

  $CompanySettingDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CompanySettingResponseCopyWithImpl<
  $Res,
  $Val extends CompanySettingResponse
>
    implements $CompanySettingResponseCopyWith<$Res> {
  _$CompanySettingResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompanySettingResponse
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
                      as CompanySettingData,
          )
          as $Val,
    );
  }

  /// Create a copy of CompanySettingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompanySettingDataCopyWith<$Res> get data {
    return $CompanySettingDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompanySettingResponseImplCopyWith<$Res>
    implements $CompanySettingResponseCopyWith<$Res> {
  factory _$$CompanySettingResponseImplCopyWith(
    _$CompanySettingResponseImpl value,
    $Res Function(_$CompanySettingResponseImpl) then,
  ) = __$$CompanySettingResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "status") String status,
    @JsonKey(name: "data") CompanySettingData data,
  });

  @override
  $CompanySettingDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$CompanySettingResponseImplCopyWithImpl<$Res>
    extends
        _$CompanySettingResponseCopyWithImpl<$Res, _$CompanySettingResponseImpl>
    implements _$$CompanySettingResponseImplCopyWith<$Res> {
  __$$CompanySettingResponseImplCopyWithImpl(
    _$CompanySettingResponseImpl _value,
    $Res Function(_$CompanySettingResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CompanySettingResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = null}) {
    return _then(
      _$CompanySettingResponseImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as CompanySettingData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanySettingResponseImpl implements _CompanySettingResponse {
  const _$CompanySettingResponseImpl({
    @JsonKey(name: "status") required this.status,
    @JsonKey(name: "data") required this.data,
  });

  factory _$CompanySettingResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanySettingResponseImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "data")
  final CompanySettingData data;

  @override
  String toString() {
    return 'CompanySettingResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanySettingResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of CompanySettingResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanySettingResponseImplCopyWith<_$CompanySettingResponseImpl>
  get copyWith =>
      __$$CompanySettingResponseImplCopyWithImpl<_$CompanySettingResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanySettingResponseImplToJson(this);
  }
}

abstract class _CompanySettingResponse implements CompanySettingResponse {
  const factory _CompanySettingResponse({
    @JsonKey(name: "status") required final String status,
    @JsonKey(name: "data") required final CompanySettingData data,
  }) = _$CompanySettingResponseImpl;

  factory _CompanySettingResponse.fromJson(Map<String, dynamic> json) =
      _$CompanySettingResponseImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "data")
  CompanySettingData get data;

  /// Create a copy of CompanySettingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompanySettingResponseImplCopyWith<_$CompanySettingResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

CompanySettingData _$CompanySettingDataFromJson(Map<String, dynamic> json) {
  return _CompanySettingData.fromJson(json);
}

/// @nodoc
mixin _$CompanySettingData {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "timeZone")
  String get timeZone => throw _privateConstructorUsedError;
  @JsonKey(name: "gpsRadius")
  int get gpsRadius => throw _privateConstructorUsedError;
  @JsonKey(name: "isLocationData")
  bool get isLocationData => throw _privateConstructorUsedError;
  @JsonKey(name: "isZoneEnabled")
  bool get isZoneEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: "currencyCode")
  String get currencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "companyId")
  int get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: "isCameraEnabled")
  bool get isCameraEnabled => throw _privateConstructorUsedError;

  /// Serializes this CompanySettingData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompanySettingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompanySettingDataCopyWith<CompanySettingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanySettingDataCopyWith<$Res> {
  factory $CompanySettingDataCopyWith(
    CompanySettingData value,
    $Res Function(CompanySettingData) then,
  ) = _$CompanySettingDataCopyWithImpl<$Res, CompanySettingData>;
  @useResult
  $Res call({
    @JsonKey(name: "id") int id,
    @JsonKey(name: "timeZone") String timeZone,
    @JsonKey(name: "gpsRadius") int gpsRadius,
    @JsonKey(name: "isLocationData") bool isLocationData,
    @JsonKey(name: "isZoneEnabled") bool isZoneEnabled,
    @JsonKey(name: "currencyCode") String currencyCode,
    @JsonKey(name: "companyId") int companyId,
    @JsonKey(name: "isCameraEnabled") bool isCameraEnabled,
  });
}

/// @nodoc
class _$CompanySettingDataCopyWithImpl<$Res, $Val extends CompanySettingData>
    implements $CompanySettingDataCopyWith<$Res> {
  _$CompanySettingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompanySettingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timeZone = null,
    Object? gpsRadius = null,
    Object? isLocationData = null,
    Object? isZoneEnabled = null,
    Object? currencyCode = null,
    Object? companyId = null,
    Object? isCameraEnabled = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            timeZone: null == timeZone
                ? _value.timeZone
                : timeZone // ignore: cast_nullable_to_non_nullable
                      as String,
            gpsRadius: null == gpsRadius
                ? _value.gpsRadius
                : gpsRadius // ignore: cast_nullable_to_non_nullable
                      as int,
            isLocationData: null == isLocationData
                ? _value.isLocationData
                : isLocationData // ignore: cast_nullable_to_non_nullable
                      as bool,
            isZoneEnabled: null == isZoneEnabled
                ? _value.isZoneEnabled
                : isZoneEnabled // ignore: cast_nullable_to_non_nullable
                      as bool,
            currencyCode: null == currencyCode
                ? _value.currencyCode
                : currencyCode // ignore: cast_nullable_to_non_nullable
                      as String,
            companyId: null == companyId
                ? _value.companyId
                : companyId // ignore: cast_nullable_to_non_nullable
                      as int,
            isCameraEnabled: null == isCameraEnabled
                ? _value.isCameraEnabled
                : isCameraEnabled // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CompanySettingDataImplCopyWith<$Res>
    implements $CompanySettingDataCopyWith<$Res> {
  factory _$$CompanySettingDataImplCopyWith(
    _$CompanySettingDataImpl value,
    $Res Function(_$CompanySettingDataImpl) then,
  ) = __$$CompanySettingDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "id") int id,
    @JsonKey(name: "timeZone") String timeZone,
    @JsonKey(name: "gpsRadius") int gpsRadius,
    @JsonKey(name: "isLocationData") bool isLocationData,
    @JsonKey(name: "isZoneEnabled") bool isZoneEnabled,
    @JsonKey(name: "currencyCode") String currencyCode,
    @JsonKey(name: "companyId") int companyId,
    @JsonKey(name: "isCameraEnabled") bool isCameraEnabled,
  });
}

/// @nodoc
class __$$CompanySettingDataImplCopyWithImpl<$Res>
    extends _$CompanySettingDataCopyWithImpl<$Res, _$CompanySettingDataImpl>
    implements _$$CompanySettingDataImplCopyWith<$Res> {
  __$$CompanySettingDataImplCopyWithImpl(
    _$CompanySettingDataImpl _value,
    $Res Function(_$CompanySettingDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CompanySettingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timeZone = null,
    Object? gpsRadius = null,
    Object? isLocationData = null,
    Object? isZoneEnabled = null,
    Object? currencyCode = null,
    Object? companyId = null,
    Object? isCameraEnabled = null,
  }) {
    return _then(
      _$CompanySettingDataImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        timeZone: null == timeZone
            ? _value.timeZone
            : timeZone // ignore: cast_nullable_to_non_nullable
                  as String,
        gpsRadius: null == gpsRadius
            ? _value.gpsRadius
            : gpsRadius // ignore: cast_nullable_to_non_nullable
                  as int,
        isLocationData: null == isLocationData
            ? _value.isLocationData
            : isLocationData // ignore: cast_nullable_to_non_nullable
                  as bool,
        isZoneEnabled: null == isZoneEnabled
            ? _value.isZoneEnabled
            : isZoneEnabled // ignore: cast_nullable_to_non_nullable
                  as bool,
        currencyCode: null == currencyCode
            ? _value.currencyCode
            : currencyCode // ignore: cast_nullable_to_non_nullable
                  as String,
        companyId: null == companyId
            ? _value.companyId
            : companyId // ignore: cast_nullable_to_non_nullable
                  as int,
        isCameraEnabled: null == isCameraEnabled
            ? _value.isCameraEnabled
            : isCameraEnabled // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanySettingDataImpl implements _CompanySettingData {
  const _$CompanySettingDataImpl({
    @JsonKey(name: "id") required this.id,
    @JsonKey(name: "timeZone") required this.timeZone,
    @JsonKey(name: "gpsRadius") required this.gpsRadius,
    @JsonKey(name: "isLocationData") required this.isLocationData,
    @JsonKey(name: "isZoneEnabled") required this.isZoneEnabled,
    @JsonKey(name: "currencyCode") required this.currencyCode,
    @JsonKey(name: "companyId") required this.companyId,
    @JsonKey(name: "isCameraEnabled") required this.isCameraEnabled,
  });

  factory _$CompanySettingDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanySettingDataImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "timeZone")
  final String timeZone;
  @override
  @JsonKey(name: "gpsRadius")
  final int gpsRadius;
  @override
  @JsonKey(name: "isLocationData")
  final bool isLocationData;
  @override
  @JsonKey(name: "isZoneEnabled")
  final bool isZoneEnabled;
  @override
  @JsonKey(name: "currencyCode")
  final String currencyCode;
  @override
  @JsonKey(name: "companyId")
  final int companyId;
  @override
  @JsonKey(name: "isCameraEnabled")
  final bool isCameraEnabled;

  @override
  String toString() {
    return 'CompanySettingData(id: $id, timeZone: $timeZone, gpsRadius: $gpsRadius, isLocationData: $isLocationData, isZoneEnabled: $isZoneEnabled, currencyCode: $currencyCode, companyId: $companyId, isCameraEnabled: $isCameraEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanySettingDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone) &&
            (identical(other.gpsRadius, gpsRadius) ||
                other.gpsRadius == gpsRadius) &&
            (identical(other.isLocationData, isLocationData) ||
                other.isLocationData == isLocationData) &&
            (identical(other.isZoneEnabled, isZoneEnabled) ||
                other.isZoneEnabled == isZoneEnabled) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.isCameraEnabled, isCameraEnabled) ||
                other.isCameraEnabled == isCameraEnabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    timeZone,
    gpsRadius,
    isLocationData,
    isZoneEnabled,
    currencyCode,
    companyId,
    isCameraEnabled,
  );

  /// Create a copy of CompanySettingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanySettingDataImplCopyWith<_$CompanySettingDataImpl> get copyWith =>
      __$$CompanySettingDataImplCopyWithImpl<_$CompanySettingDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanySettingDataImplToJson(this);
  }
}

abstract class _CompanySettingData implements CompanySettingData {
  const factory _CompanySettingData({
    @JsonKey(name: "id") required final int id,
    @JsonKey(name: "timeZone") required final String timeZone,
    @JsonKey(name: "gpsRadius") required final int gpsRadius,
    @JsonKey(name: "isLocationData") required final bool isLocationData,
    @JsonKey(name: "isZoneEnabled") required final bool isZoneEnabled,
    @JsonKey(name: "currencyCode") required final String currencyCode,
    @JsonKey(name: "companyId") required final int companyId,
    @JsonKey(name: "isCameraEnabled") required final bool isCameraEnabled,
  }) = _$CompanySettingDataImpl;

  factory _CompanySettingData.fromJson(Map<String, dynamic> json) =
      _$CompanySettingDataImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "timeZone")
  String get timeZone;
  @override
  @JsonKey(name: "gpsRadius")
  int get gpsRadius;
  @override
  @JsonKey(name: "isLocationData")
  bool get isLocationData;
  @override
  @JsonKey(name: "isZoneEnabled")
  bool get isZoneEnabled;
  @override
  @JsonKey(name: "currencyCode")
  String get currencyCode;
  @override
  @JsonKey(name: "companyId")
  int get companyId;
  @override
  @JsonKey(name: "isCameraEnabled")
  bool get isCameraEnabled;

  /// Create a copy of CompanySettingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompanySettingDataImplCopyWith<_$CompanySettingDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
