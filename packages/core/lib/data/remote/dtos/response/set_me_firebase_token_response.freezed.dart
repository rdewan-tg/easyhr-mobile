// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_me_firebase_token_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SetMeFirebaseTokenResponse {

 String get status; bool get data;
/// Create a copy of SetMeFirebaseTokenResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetMeFirebaseTokenResponseCopyWith<SetMeFirebaseTokenResponse> get copyWith => _$SetMeFirebaseTokenResponseCopyWithImpl<SetMeFirebaseTokenResponse>(this as SetMeFirebaseTokenResponse, _$identity);

  /// Serializes this SetMeFirebaseTokenResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetMeFirebaseTokenResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'SetMeFirebaseTokenResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $SetMeFirebaseTokenResponseCopyWith<$Res>  {
  factory $SetMeFirebaseTokenResponseCopyWith(SetMeFirebaseTokenResponse value, $Res Function(SetMeFirebaseTokenResponse) _then) = _$SetMeFirebaseTokenResponseCopyWithImpl;
@useResult
$Res call({
 String status, bool data
});




}
/// @nodoc
class _$SetMeFirebaseTokenResponseCopyWithImpl<$Res>
    implements $SetMeFirebaseTokenResponseCopyWith<$Res> {
  _$SetMeFirebaseTokenResponseCopyWithImpl(this._self, this._then);

  final SetMeFirebaseTokenResponse _self;
  final $Res Function(SetMeFirebaseTokenResponse) _then;

/// Create a copy of SetMeFirebaseTokenResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SetMeFirebaseTokenResponse].
extension SetMeFirebaseTokenResponsePatterns on SetMeFirebaseTokenResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetMeFirebaseTokenResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetMeFirebaseTokenResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetMeFirebaseTokenResponse value)  $default,){
final _that = this;
switch (_that) {
case _SetMeFirebaseTokenResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetMeFirebaseTokenResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SetMeFirebaseTokenResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  bool data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetMeFirebaseTokenResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  bool data)  $default,) {final _that = this;
switch (_that) {
case _SetMeFirebaseTokenResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  bool data)?  $default,) {final _that = this;
switch (_that) {
case _SetMeFirebaseTokenResponse() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SetMeFirebaseTokenResponse implements SetMeFirebaseTokenResponse {
  const _SetMeFirebaseTokenResponse({required this.status, required this.data});
  factory _SetMeFirebaseTokenResponse.fromJson(Map<String, dynamic> json) => _$SetMeFirebaseTokenResponseFromJson(json);

@override final  String status;
@override final  bool data;

/// Create a copy of SetMeFirebaseTokenResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetMeFirebaseTokenResponseCopyWith<_SetMeFirebaseTokenResponse> get copyWith => __$SetMeFirebaseTokenResponseCopyWithImpl<_SetMeFirebaseTokenResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SetMeFirebaseTokenResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetMeFirebaseTokenResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'SetMeFirebaseTokenResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$SetMeFirebaseTokenResponseCopyWith<$Res> implements $SetMeFirebaseTokenResponseCopyWith<$Res> {
  factory _$SetMeFirebaseTokenResponseCopyWith(_SetMeFirebaseTokenResponse value, $Res Function(_SetMeFirebaseTokenResponse) _then) = __$SetMeFirebaseTokenResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, bool data
});




}
/// @nodoc
class __$SetMeFirebaseTokenResponseCopyWithImpl<$Res>
    implements _$SetMeFirebaseTokenResponseCopyWith<$Res> {
  __$SetMeFirebaseTokenResponseCopyWithImpl(this._self, this._then);

  final _SetMeFirebaseTokenResponse _self;
  final $Res Function(_SetMeFirebaseTokenResponse) _then;

/// Create a copy of SetMeFirebaseTokenResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,}) {
  return _then(_SetMeFirebaseTokenResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
