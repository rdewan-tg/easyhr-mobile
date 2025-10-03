// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_attendance_state_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LastAttendanceStateResponse {

@JsonKey(name: "status") String get status;@JsonKey(name: "data") LastAttendanceStateData? get data;
/// Create a copy of LastAttendanceStateResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LastAttendanceStateResponseCopyWith<LastAttendanceStateResponse> get copyWith => _$LastAttendanceStateResponseCopyWithImpl<LastAttendanceStateResponse>(this as LastAttendanceStateResponse, _$identity);

  /// Serializes this LastAttendanceStateResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LastAttendanceStateResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'LastAttendanceStateResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $LastAttendanceStateResponseCopyWith<$Res>  {
  factory $LastAttendanceStateResponseCopyWith(LastAttendanceStateResponse value, $Res Function(LastAttendanceStateResponse) _then) = _$LastAttendanceStateResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "data") LastAttendanceStateData? data
});


$LastAttendanceStateDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$LastAttendanceStateResponseCopyWithImpl<$Res>
    implements $LastAttendanceStateResponseCopyWith<$Res> {
  _$LastAttendanceStateResponseCopyWithImpl(this._self, this._then);

  final LastAttendanceStateResponse _self;
  final $Res Function(LastAttendanceStateResponse) _then;

/// Create a copy of LastAttendanceStateResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LastAttendanceStateData?,
  ));
}
/// Create a copy of LastAttendanceStateResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LastAttendanceStateDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $LastAttendanceStateDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [LastAttendanceStateResponse].
extension LastAttendanceStateResponsePatterns on LastAttendanceStateResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LastAttendanceStateResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LastAttendanceStateResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LastAttendanceStateResponse value)  $default,){
final _that = this;
switch (_that) {
case _LastAttendanceStateResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LastAttendanceStateResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LastAttendanceStateResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  LastAttendanceStateData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LastAttendanceStateResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  LastAttendanceStateData? data)  $default,) {final _that = this;
switch (_that) {
case _LastAttendanceStateResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  LastAttendanceStateData? data)?  $default,) {final _that = this;
switch (_that) {
case _LastAttendanceStateResponse() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LastAttendanceStateResponse implements LastAttendanceStateResponse {
  const _LastAttendanceStateResponse({@JsonKey(name: "status") required this.status, @JsonKey(name: "data") this.data});
  factory _LastAttendanceStateResponse.fromJson(Map<String, dynamic> json) => _$LastAttendanceStateResponseFromJson(json);

@override@JsonKey(name: "status") final  String status;
@override@JsonKey(name: "data") final  LastAttendanceStateData? data;

/// Create a copy of LastAttendanceStateResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LastAttendanceStateResponseCopyWith<_LastAttendanceStateResponse> get copyWith => __$LastAttendanceStateResponseCopyWithImpl<_LastAttendanceStateResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LastAttendanceStateResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LastAttendanceStateResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'LastAttendanceStateResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$LastAttendanceStateResponseCopyWith<$Res> implements $LastAttendanceStateResponseCopyWith<$Res> {
  factory _$LastAttendanceStateResponseCopyWith(_LastAttendanceStateResponse value, $Res Function(_LastAttendanceStateResponse) _then) = __$LastAttendanceStateResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "data") LastAttendanceStateData? data
});


@override $LastAttendanceStateDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$LastAttendanceStateResponseCopyWithImpl<$Res>
    implements _$LastAttendanceStateResponseCopyWith<$Res> {
  __$LastAttendanceStateResponseCopyWithImpl(this._self, this._then);

  final _LastAttendanceStateResponse _self;
  final $Res Function(_LastAttendanceStateResponse) _then;

/// Create a copy of LastAttendanceStateResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = freezed,}) {
  return _then(_LastAttendanceStateResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LastAttendanceStateData?,
  ));
}

/// Create a copy of LastAttendanceStateResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LastAttendanceStateDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $LastAttendanceStateDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$LastAttendanceStateData {

@JsonKey(name: 'status') AttendanceStatus get status;
/// Create a copy of LastAttendanceStateData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LastAttendanceStateDataCopyWith<LastAttendanceStateData> get copyWith => _$LastAttendanceStateDataCopyWithImpl<LastAttendanceStateData>(this as LastAttendanceStateData, _$identity);

  /// Serializes this LastAttendanceStateData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LastAttendanceStateData&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'LastAttendanceStateData(status: $status)';
}


}

/// @nodoc
abstract mixin class $LastAttendanceStateDataCopyWith<$Res>  {
  factory $LastAttendanceStateDataCopyWith(LastAttendanceStateData value, $Res Function(LastAttendanceStateData) _then) = _$LastAttendanceStateDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status') AttendanceStatus status
});




}
/// @nodoc
class _$LastAttendanceStateDataCopyWithImpl<$Res>
    implements $LastAttendanceStateDataCopyWith<$Res> {
  _$LastAttendanceStateDataCopyWithImpl(this._self, this._then);

  final LastAttendanceStateData _self;
  final $Res Function(LastAttendanceStateData) _then;

/// Create a copy of LastAttendanceStateData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AttendanceStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [LastAttendanceStateData].
extension LastAttendanceStateDataPatterns on LastAttendanceStateData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LastAttendanceStateData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LastAttendanceStateData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LastAttendanceStateData value)  $default,){
final _that = this;
switch (_that) {
case _LastAttendanceStateData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LastAttendanceStateData value)?  $default,){
final _that = this;
switch (_that) {
case _LastAttendanceStateData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  AttendanceStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LastAttendanceStateData() when $default != null:
return $default(_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  AttendanceStatus status)  $default,) {final _that = this;
switch (_that) {
case _LastAttendanceStateData():
return $default(_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'status')  AttendanceStatus status)?  $default,) {final _that = this;
switch (_that) {
case _LastAttendanceStateData() when $default != null:
return $default(_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LastAttendanceStateData implements LastAttendanceStateData {
  const _LastAttendanceStateData({@JsonKey(name: 'status') required this.status});
  factory _LastAttendanceStateData.fromJson(Map<String, dynamic> json) => _$LastAttendanceStateDataFromJson(json);

@override@JsonKey(name: 'status') final  AttendanceStatus status;

/// Create a copy of LastAttendanceStateData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LastAttendanceStateDataCopyWith<_LastAttendanceStateData> get copyWith => __$LastAttendanceStateDataCopyWithImpl<_LastAttendanceStateData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LastAttendanceStateDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LastAttendanceStateData&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'LastAttendanceStateData(status: $status)';
}


}

/// @nodoc
abstract mixin class _$LastAttendanceStateDataCopyWith<$Res> implements $LastAttendanceStateDataCopyWith<$Res> {
  factory _$LastAttendanceStateDataCopyWith(_LastAttendanceStateData value, $Res Function(_LastAttendanceStateData) _then) = __$LastAttendanceStateDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status') AttendanceStatus status
});




}
/// @nodoc
class __$LastAttendanceStateDataCopyWithImpl<$Res>
    implements _$LastAttendanceStateDataCopyWith<$Res> {
  __$LastAttendanceStateDataCopyWithImpl(this._self, this._then);

  final _LastAttendanceStateData _self;
  final $Res Function(_LastAttendanceStateData) _then;

/// Create a copy of LastAttendanceStateData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_LastAttendanceStateData(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AttendanceStatus,
  ));
}


}

// dart format on
