// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_setting_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanySettingResponse {

@JsonKey(name: "status") String get status;@JsonKey(name: "data") CompanySettingData get data;
/// Create a copy of CompanySettingResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanySettingResponseCopyWith<CompanySettingResponse> get copyWith => _$CompanySettingResponseCopyWithImpl<CompanySettingResponse>(this as CompanySettingResponse, _$identity);

  /// Serializes this CompanySettingResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanySettingResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'CompanySettingResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $CompanySettingResponseCopyWith<$Res>  {
  factory $CompanySettingResponseCopyWith(CompanySettingResponse value, $Res Function(CompanySettingResponse) _then) = _$CompanySettingResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "data") CompanySettingData data
});


$CompanySettingDataCopyWith<$Res> get data;

}
/// @nodoc
class _$CompanySettingResponseCopyWithImpl<$Res>
    implements $CompanySettingResponseCopyWith<$Res> {
  _$CompanySettingResponseCopyWithImpl(this._self, this._then);

  final CompanySettingResponse _self;
  final $Res Function(CompanySettingResponse) _then;

/// Create a copy of CompanySettingResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CompanySettingData,
  ));
}
/// Create a copy of CompanySettingResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanySettingDataCopyWith<$Res> get data {
  
  return $CompanySettingDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CompanySettingResponse].
extension CompanySettingResponsePatterns on CompanySettingResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanySettingResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanySettingResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanySettingResponse value)  $default,){
final _that = this;
switch (_that) {
case _CompanySettingResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanySettingResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CompanySettingResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  CompanySettingData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanySettingResponse() when $default != null:
return $default(_that.status,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  CompanySettingData data)  $default,) {final _that = this;
switch (_that) {
case _CompanySettingResponse():
return $default(_that.status,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  CompanySettingData data)?  $default,) {final _that = this;
switch (_that) {
case _CompanySettingResponse() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanySettingResponse implements CompanySettingResponse {
  const _CompanySettingResponse({@JsonKey(name: "status") required this.status, @JsonKey(name: "data") required this.data});
  factory _CompanySettingResponse.fromJson(Map<String, dynamic> json) => _$CompanySettingResponseFromJson(json);

@override@JsonKey(name: "status") final  String status;
@override@JsonKey(name: "data") final  CompanySettingData data;

/// Create a copy of CompanySettingResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanySettingResponseCopyWith<_CompanySettingResponse> get copyWith => __$CompanySettingResponseCopyWithImpl<_CompanySettingResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanySettingResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanySettingResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'CompanySettingResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CompanySettingResponseCopyWith<$Res> implements $CompanySettingResponseCopyWith<$Res> {
  factory _$CompanySettingResponseCopyWith(_CompanySettingResponse value, $Res Function(_CompanySettingResponse) _then) = __$CompanySettingResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "data") CompanySettingData data
});


@override $CompanySettingDataCopyWith<$Res> get data;

}
/// @nodoc
class __$CompanySettingResponseCopyWithImpl<$Res>
    implements _$CompanySettingResponseCopyWith<$Res> {
  __$CompanySettingResponseCopyWithImpl(this._self, this._then);

  final _CompanySettingResponse _self;
  final $Res Function(_CompanySettingResponse) _then;

/// Create a copy of CompanySettingResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,}) {
  return _then(_CompanySettingResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CompanySettingData,
  ));
}

/// Create a copy of CompanySettingResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanySettingDataCopyWith<$Res> get data {
  
  return $CompanySettingDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CompanySettingData {

@JsonKey(name: "id") int get id;@JsonKey(name: "timeZone") String get timeZone;@JsonKey(name: "gpsRadius") int get gpsRadius;@JsonKey(name: "isLocationData") bool get isLocationData;@JsonKey(name: "isZoneEnabled") bool get isZoneEnabled;@JsonKey(name: "currencyCode") String get currencyCode;@JsonKey(name: "companyId") int get companyId;@JsonKey(name: "isCameraEnabled") bool get isCameraEnabled;
/// Create a copy of CompanySettingData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanySettingDataCopyWith<CompanySettingData> get copyWith => _$CompanySettingDataCopyWithImpl<CompanySettingData>(this as CompanySettingData, _$identity);

  /// Serializes this CompanySettingData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanySettingData&&(identical(other.id, id) || other.id == id)&&(identical(other.timeZone, timeZone) || other.timeZone == timeZone)&&(identical(other.gpsRadius, gpsRadius) || other.gpsRadius == gpsRadius)&&(identical(other.isLocationData, isLocationData) || other.isLocationData == isLocationData)&&(identical(other.isZoneEnabled, isZoneEnabled) || other.isZoneEnabled == isZoneEnabled)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.isCameraEnabled, isCameraEnabled) || other.isCameraEnabled == isCameraEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,timeZone,gpsRadius,isLocationData,isZoneEnabled,currencyCode,companyId,isCameraEnabled);

@override
String toString() {
  return 'CompanySettingData(id: $id, timeZone: $timeZone, gpsRadius: $gpsRadius, isLocationData: $isLocationData, isZoneEnabled: $isZoneEnabled, currencyCode: $currencyCode, companyId: $companyId, isCameraEnabled: $isCameraEnabled)';
}


}

/// @nodoc
abstract mixin class $CompanySettingDataCopyWith<$Res>  {
  factory $CompanySettingDataCopyWith(CompanySettingData value, $Res Function(CompanySettingData) _then) = _$CompanySettingDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "timeZone") String timeZone,@JsonKey(name: "gpsRadius") int gpsRadius,@JsonKey(name: "isLocationData") bool isLocationData,@JsonKey(name: "isZoneEnabled") bool isZoneEnabled,@JsonKey(name: "currencyCode") String currencyCode,@JsonKey(name: "companyId") int companyId,@JsonKey(name: "isCameraEnabled") bool isCameraEnabled
});




}
/// @nodoc
class _$CompanySettingDataCopyWithImpl<$Res>
    implements $CompanySettingDataCopyWith<$Res> {
  _$CompanySettingDataCopyWithImpl(this._self, this._then);

  final CompanySettingData _self;
  final $Res Function(CompanySettingData) _then;

/// Create a copy of CompanySettingData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? timeZone = null,Object? gpsRadius = null,Object? isLocationData = null,Object? isZoneEnabled = null,Object? currencyCode = null,Object? companyId = null,Object? isCameraEnabled = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,timeZone: null == timeZone ? _self.timeZone : timeZone // ignore: cast_nullable_to_non_nullable
as String,gpsRadius: null == gpsRadius ? _self.gpsRadius : gpsRadius // ignore: cast_nullable_to_non_nullable
as int,isLocationData: null == isLocationData ? _self.isLocationData : isLocationData // ignore: cast_nullable_to_non_nullable
as bool,isZoneEnabled: null == isZoneEnabled ? _self.isZoneEnabled : isZoneEnabled // ignore: cast_nullable_to_non_nullable
as bool,currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,isCameraEnabled: null == isCameraEnabled ? _self.isCameraEnabled : isCameraEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanySettingData].
extension CompanySettingDataPatterns on CompanySettingData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanySettingData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanySettingData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanySettingData value)  $default,){
final _that = this;
switch (_that) {
case _CompanySettingData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanySettingData value)?  $default,){
final _that = this;
switch (_that) {
case _CompanySettingData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "timeZone")  String timeZone, @JsonKey(name: "gpsRadius")  int gpsRadius, @JsonKey(name: "isLocationData")  bool isLocationData, @JsonKey(name: "isZoneEnabled")  bool isZoneEnabled, @JsonKey(name: "currencyCode")  String currencyCode, @JsonKey(name: "companyId")  int companyId, @JsonKey(name: "isCameraEnabled")  bool isCameraEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanySettingData() when $default != null:
return $default(_that.id,_that.timeZone,_that.gpsRadius,_that.isLocationData,_that.isZoneEnabled,_that.currencyCode,_that.companyId,_that.isCameraEnabled);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "timeZone")  String timeZone, @JsonKey(name: "gpsRadius")  int gpsRadius, @JsonKey(name: "isLocationData")  bool isLocationData, @JsonKey(name: "isZoneEnabled")  bool isZoneEnabled, @JsonKey(name: "currencyCode")  String currencyCode, @JsonKey(name: "companyId")  int companyId, @JsonKey(name: "isCameraEnabled")  bool isCameraEnabled)  $default,) {final _that = this;
switch (_that) {
case _CompanySettingData():
return $default(_that.id,_that.timeZone,_that.gpsRadius,_that.isLocationData,_that.isZoneEnabled,_that.currencyCode,_that.companyId,_that.isCameraEnabled);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int id, @JsonKey(name: "timeZone")  String timeZone, @JsonKey(name: "gpsRadius")  int gpsRadius, @JsonKey(name: "isLocationData")  bool isLocationData, @JsonKey(name: "isZoneEnabled")  bool isZoneEnabled, @JsonKey(name: "currencyCode")  String currencyCode, @JsonKey(name: "companyId")  int companyId, @JsonKey(name: "isCameraEnabled")  bool isCameraEnabled)?  $default,) {final _that = this;
switch (_that) {
case _CompanySettingData() when $default != null:
return $default(_that.id,_that.timeZone,_that.gpsRadius,_that.isLocationData,_that.isZoneEnabled,_that.currencyCode,_that.companyId,_that.isCameraEnabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanySettingData implements CompanySettingData {
  const _CompanySettingData({@JsonKey(name: "id") required this.id, @JsonKey(name: "timeZone") required this.timeZone, @JsonKey(name: "gpsRadius") required this.gpsRadius, @JsonKey(name: "isLocationData") required this.isLocationData, @JsonKey(name: "isZoneEnabled") required this.isZoneEnabled, @JsonKey(name: "currencyCode") required this.currencyCode, @JsonKey(name: "companyId") required this.companyId, @JsonKey(name: "isCameraEnabled") required this.isCameraEnabled});
  factory _CompanySettingData.fromJson(Map<String, dynamic> json) => _$CompanySettingDataFromJson(json);

@override@JsonKey(name: "id") final  int id;
@override@JsonKey(name: "timeZone") final  String timeZone;
@override@JsonKey(name: "gpsRadius") final  int gpsRadius;
@override@JsonKey(name: "isLocationData") final  bool isLocationData;
@override@JsonKey(name: "isZoneEnabled") final  bool isZoneEnabled;
@override@JsonKey(name: "currencyCode") final  String currencyCode;
@override@JsonKey(name: "companyId") final  int companyId;
@override@JsonKey(name: "isCameraEnabled") final  bool isCameraEnabled;

/// Create a copy of CompanySettingData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanySettingDataCopyWith<_CompanySettingData> get copyWith => __$CompanySettingDataCopyWithImpl<_CompanySettingData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanySettingDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanySettingData&&(identical(other.id, id) || other.id == id)&&(identical(other.timeZone, timeZone) || other.timeZone == timeZone)&&(identical(other.gpsRadius, gpsRadius) || other.gpsRadius == gpsRadius)&&(identical(other.isLocationData, isLocationData) || other.isLocationData == isLocationData)&&(identical(other.isZoneEnabled, isZoneEnabled) || other.isZoneEnabled == isZoneEnabled)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.isCameraEnabled, isCameraEnabled) || other.isCameraEnabled == isCameraEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,timeZone,gpsRadius,isLocationData,isZoneEnabled,currencyCode,companyId,isCameraEnabled);

@override
String toString() {
  return 'CompanySettingData(id: $id, timeZone: $timeZone, gpsRadius: $gpsRadius, isLocationData: $isLocationData, isZoneEnabled: $isZoneEnabled, currencyCode: $currencyCode, companyId: $companyId, isCameraEnabled: $isCameraEnabled)';
}


}

/// @nodoc
abstract mixin class _$CompanySettingDataCopyWith<$Res> implements $CompanySettingDataCopyWith<$Res> {
  factory _$CompanySettingDataCopyWith(_CompanySettingData value, $Res Function(_CompanySettingData) _then) = __$CompanySettingDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "timeZone") String timeZone,@JsonKey(name: "gpsRadius") int gpsRadius,@JsonKey(name: "isLocationData") bool isLocationData,@JsonKey(name: "isZoneEnabled") bool isZoneEnabled,@JsonKey(name: "currencyCode") String currencyCode,@JsonKey(name: "companyId") int companyId,@JsonKey(name: "isCameraEnabled") bool isCameraEnabled
});




}
/// @nodoc
class __$CompanySettingDataCopyWithImpl<$Res>
    implements _$CompanySettingDataCopyWith<$Res> {
  __$CompanySettingDataCopyWithImpl(this._self, this._then);

  final _CompanySettingData _self;
  final $Res Function(_CompanySettingData) _then;

/// Create a copy of CompanySettingData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? timeZone = null,Object? gpsRadius = null,Object? isLocationData = null,Object? isZoneEnabled = null,Object? currencyCode = null,Object? companyId = null,Object? isCameraEnabled = null,}) {
  return _then(_CompanySettingData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,timeZone: null == timeZone ? _self.timeZone : timeZone // ignore: cast_nullable_to_non_nullable
as String,gpsRadius: null == gpsRadius ? _self.gpsRadius : gpsRadius // ignore: cast_nullable_to_non_nullable
as int,isLocationData: null == isLocationData ? _self.isLocationData : isLocationData // ignore: cast_nullable_to_non_nullable
as bool,isZoneEnabled: null == isZoneEnabled ? _self.isZoneEnabled : isZoneEnabled // ignore: cast_nullable_to_non_nullable
as bool,currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,isCameraEnabled: null == isCameraEnabled ? _self.isCameraEnabled : isCameraEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
