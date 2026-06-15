// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileResponse {

@JsonKey(name: "status") String get status;@JsonKey(name: "data") ProfileData get data;
/// Create a copy of ProfileResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileResponseCopyWith<ProfileResponse> get copyWith => _$ProfileResponseCopyWithImpl<ProfileResponse>(this as ProfileResponse, _$identity);

  /// Serializes this ProfileResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'ProfileResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $ProfileResponseCopyWith<$Res>  {
  factory $ProfileResponseCopyWith(ProfileResponse value, $Res Function(ProfileResponse) _then) = _$ProfileResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "data") ProfileData data
});


$ProfileDataCopyWith<$Res> get data;

}
/// @nodoc
class _$ProfileResponseCopyWithImpl<$Res>
    implements $ProfileResponseCopyWith<$Res> {
  _$ProfileResponseCopyWithImpl(this._self, this._then);

  final ProfileResponse _self;
  final $Res Function(ProfileResponse) _then;

/// Create a copy of ProfileResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProfileData,
  ));
}
/// Create a copy of ProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileDataCopyWith<$Res> get data {
  
  return $ProfileDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileResponse].
extension ProfileResponsePatterns on ProfileResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileResponse value)  $default,){
final _that = this;
switch (_that) {
case _ProfileResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  ProfileData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  ProfileData data)  $default,) {final _that = this;
switch (_that) {
case _ProfileResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  ProfileData data)?  $default,) {final _that = this;
switch (_that) {
case _ProfileResponse() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileResponse implements ProfileResponse {
  const _ProfileResponse({@JsonKey(name: "status") required this.status, @JsonKey(name: "data") required this.data});
  factory _ProfileResponse.fromJson(Map<String, dynamic> json) => _$ProfileResponseFromJson(json);

@override@JsonKey(name: "status") final  String status;
@override@JsonKey(name: "data") final  ProfileData data;

/// Create a copy of ProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileResponseCopyWith<_ProfileResponse> get copyWith => __$ProfileResponseCopyWithImpl<_ProfileResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'ProfileResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ProfileResponseCopyWith<$Res> implements $ProfileResponseCopyWith<$Res> {
  factory _$ProfileResponseCopyWith(_ProfileResponse value, $Res Function(_ProfileResponse) _then) = __$ProfileResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "data") ProfileData data
});


@override $ProfileDataCopyWith<$Res> get data;

}
/// @nodoc
class __$ProfileResponseCopyWithImpl<$Res>
    implements _$ProfileResponseCopyWith<$Res> {
  __$ProfileResponseCopyWithImpl(this._self, this._then);

  final _ProfileResponse _self;
  final $Res Function(_ProfileResponse) _then;

/// Create a copy of ProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,}) {
  return _then(_ProfileResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProfileData,
  ));
}

/// Create a copy of ProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileDataCopyWith<$Res> get data {
  
  return $ProfileDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ProfileData {

@JsonKey(name: "id") int get id;@JsonKey(name: "timeZone") String get timeZone;@JsonKey(name: "gpsRadius") int get gpsRadius;@JsonKey(name: "isLocationData") bool get isLocationData;@JsonKey(name: "isZoneEnabled") bool get isZoneEnabled;@JsonKey(name: "currencyCode") String get currencyCode;@JsonKey(name: "companyId") int get companyId;
/// Create a copy of ProfileData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileDataCopyWith<ProfileData> get copyWith => _$ProfileDataCopyWithImpl<ProfileData>(this as ProfileData, _$identity);

  /// Serializes this ProfileData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileData&&(identical(other.id, id) || other.id == id)&&(identical(other.timeZone, timeZone) || other.timeZone == timeZone)&&(identical(other.gpsRadius, gpsRadius) || other.gpsRadius == gpsRadius)&&(identical(other.isLocationData, isLocationData) || other.isLocationData == isLocationData)&&(identical(other.isZoneEnabled, isZoneEnabled) || other.isZoneEnabled == isZoneEnabled)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.companyId, companyId) || other.companyId == companyId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,timeZone,gpsRadius,isLocationData,isZoneEnabled,currencyCode,companyId);

@override
String toString() {
  return 'ProfileData(id: $id, timeZone: $timeZone, gpsRadius: $gpsRadius, isLocationData: $isLocationData, isZoneEnabled: $isZoneEnabled, currencyCode: $currencyCode, companyId: $companyId)';
}


}

/// @nodoc
abstract mixin class $ProfileDataCopyWith<$Res>  {
  factory $ProfileDataCopyWith(ProfileData value, $Res Function(ProfileData) _then) = _$ProfileDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "timeZone") String timeZone,@JsonKey(name: "gpsRadius") int gpsRadius,@JsonKey(name: "isLocationData") bool isLocationData,@JsonKey(name: "isZoneEnabled") bool isZoneEnabled,@JsonKey(name: "currencyCode") String currencyCode,@JsonKey(name: "companyId") int companyId
});




}
/// @nodoc
class _$ProfileDataCopyWithImpl<$Res>
    implements $ProfileDataCopyWith<$Res> {
  _$ProfileDataCopyWithImpl(this._self, this._then);

  final ProfileData _self;
  final $Res Function(ProfileData) _then;

/// Create a copy of ProfileData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? timeZone = null,Object? gpsRadius = null,Object? isLocationData = null,Object? isZoneEnabled = null,Object? currencyCode = null,Object? companyId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,timeZone: null == timeZone ? _self.timeZone : timeZone // ignore: cast_nullable_to_non_nullable
as String,gpsRadius: null == gpsRadius ? _self.gpsRadius : gpsRadius // ignore: cast_nullable_to_non_nullable
as int,isLocationData: null == isLocationData ? _self.isLocationData : isLocationData // ignore: cast_nullable_to_non_nullable
as bool,isZoneEnabled: null == isZoneEnabled ? _self.isZoneEnabled : isZoneEnabled // ignore: cast_nullable_to_non_nullable
as bool,currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileData].
extension ProfileDataPatterns on ProfileData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileData value)  $default,){
final _that = this;
switch (_that) {
case _ProfileData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileData value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "timeZone")  String timeZone, @JsonKey(name: "gpsRadius")  int gpsRadius, @JsonKey(name: "isLocationData")  bool isLocationData, @JsonKey(name: "isZoneEnabled")  bool isZoneEnabled, @JsonKey(name: "currencyCode")  String currencyCode, @JsonKey(name: "companyId")  int companyId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileData() when $default != null:
return $default(_that.id,_that.timeZone,_that.gpsRadius,_that.isLocationData,_that.isZoneEnabled,_that.currencyCode,_that.companyId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "timeZone")  String timeZone, @JsonKey(name: "gpsRadius")  int gpsRadius, @JsonKey(name: "isLocationData")  bool isLocationData, @JsonKey(name: "isZoneEnabled")  bool isZoneEnabled, @JsonKey(name: "currencyCode")  String currencyCode, @JsonKey(name: "companyId")  int companyId)  $default,) {final _that = this;
switch (_that) {
case _ProfileData():
return $default(_that.id,_that.timeZone,_that.gpsRadius,_that.isLocationData,_that.isZoneEnabled,_that.currencyCode,_that.companyId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int id, @JsonKey(name: "timeZone")  String timeZone, @JsonKey(name: "gpsRadius")  int gpsRadius, @JsonKey(name: "isLocationData")  bool isLocationData, @JsonKey(name: "isZoneEnabled")  bool isZoneEnabled, @JsonKey(name: "currencyCode")  String currencyCode, @JsonKey(name: "companyId")  int companyId)?  $default,) {final _that = this;
switch (_that) {
case _ProfileData() when $default != null:
return $default(_that.id,_that.timeZone,_that.gpsRadius,_that.isLocationData,_that.isZoneEnabled,_that.currencyCode,_that.companyId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileData implements ProfileData {
  const _ProfileData({@JsonKey(name: "id") required this.id, @JsonKey(name: "timeZone") required this.timeZone, @JsonKey(name: "gpsRadius") required this.gpsRadius, @JsonKey(name: "isLocationData") required this.isLocationData, @JsonKey(name: "isZoneEnabled") required this.isZoneEnabled, @JsonKey(name: "currencyCode") required this.currencyCode, @JsonKey(name: "companyId") required this.companyId});
  factory _ProfileData.fromJson(Map<String, dynamic> json) => _$ProfileDataFromJson(json);

@override@JsonKey(name: "id") final  int id;
@override@JsonKey(name: "timeZone") final  String timeZone;
@override@JsonKey(name: "gpsRadius") final  int gpsRadius;
@override@JsonKey(name: "isLocationData") final  bool isLocationData;
@override@JsonKey(name: "isZoneEnabled") final  bool isZoneEnabled;
@override@JsonKey(name: "currencyCode") final  String currencyCode;
@override@JsonKey(name: "companyId") final  int companyId;

/// Create a copy of ProfileData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileDataCopyWith<_ProfileData> get copyWith => __$ProfileDataCopyWithImpl<_ProfileData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileData&&(identical(other.id, id) || other.id == id)&&(identical(other.timeZone, timeZone) || other.timeZone == timeZone)&&(identical(other.gpsRadius, gpsRadius) || other.gpsRadius == gpsRadius)&&(identical(other.isLocationData, isLocationData) || other.isLocationData == isLocationData)&&(identical(other.isZoneEnabled, isZoneEnabled) || other.isZoneEnabled == isZoneEnabled)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.companyId, companyId) || other.companyId == companyId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,timeZone,gpsRadius,isLocationData,isZoneEnabled,currencyCode,companyId);

@override
String toString() {
  return 'ProfileData(id: $id, timeZone: $timeZone, gpsRadius: $gpsRadius, isLocationData: $isLocationData, isZoneEnabled: $isZoneEnabled, currencyCode: $currencyCode, companyId: $companyId)';
}


}

/// @nodoc
abstract mixin class _$ProfileDataCopyWith<$Res> implements $ProfileDataCopyWith<$Res> {
  factory _$ProfileDataCopyWith(_ProfileData value, $Res Function(_ProfileData) _then) = __$ProfileDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "timeZone") String timeZone,@JsonKey(name: "gpsRadius") int gpsRadius,@JsonKey(name: "isLocationData") bool isLocationData,@JsonKey(name: "isZoneEnabled") bool isZoneEnabled,@JsonKey(name: "currencyCode") String currencyCode,@JsonKey(name: "companyId") int companyId
});




}
/// @nodoc
class __$ProfileDataCopyWithImpl<$Res>
    implements _$ProfileDataCopyWith<$Res> {
  __$ProfileDataCopyWithImpl(this._self, this._then);

  final _ProfileData _self;
  final $Res Function(_ProfileData) _then;

/// Create a copy of ProfileData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? timeZone = null,Object? gpsRadius = null,Object? isLocationData = null,Object? isZoneEnabled = null,Object? currencyCode = null,Object? companyId = null,}) {
  return _then(_ProfileData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,timeZone: null == timeZone ? _self.timeZone : timeZone // ignore: cast_nullable_to_non_nullable
as String,gpsRadius: null == gpsRadius ? _self.gpsRadius : gpsRadius // ignore: cast_nullable_to_non_nullable
as int,isLocationData: null == isLocationData ? _self.isLocationData : isLocationData // ignore: cast_nullable_to_non_nullable
as bool,isZoneEnabled: null == isZoneEnabled ? _self.isZoneEnabled : isZoneEnabled // ignore: cast_nullable_to_non_nullable
as bool,currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
