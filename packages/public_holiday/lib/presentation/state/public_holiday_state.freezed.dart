// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_holiday_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PublicHolidayState {

 bool get isLoading; List<PublicHoliday> get publicHolidays; String? get error;
/// Create a copy of PublicHolidayState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PublicHolidayStateCopyWith<PublicHolidayState> get copyWith => _$PublicHolidayStateCopyWithImpl<PublicHolidayState>(this as PublicHolidayState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PublicHolidayState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.publicHolidays, publicHolidays)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(publicHolidays),error);

@override
String toString() {
  return 'PublicHolidayState(isLoading: $isLoading, publicHolidays: $publicHolidays, error: $error)';
}


}

/// @nodoc
abstract mixin class $PublicHolidayStateCopyWith<$Res>  {
  factory $PublicHolidayStateCopyWith(PublicHolidayState value, $Res Function(PublicHolidayState) _then) = _$PublicHolidayStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<PublicHoliday> publicHolidays, String? error
});




}
/// @nodoc
class _$PublicHolidayStateCopyWithImpl<$Res>
    implements $PublicHolidayStateCopyWith<$Res> {
  _$PublicHolidayStateCopyWithImpl(this._self, this._then);

  final PublicHolidayState _self;
  final $Res Function(PublicHolidayState) _then;

/// Create a copy of PublicHolidayState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? publicHolidays = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,publicHolidays: null == publicHolidays ? _self.publicHolidays : publicHolidays // ignore: cast_nullable_to_non_nullable
as List<PublicHoliday>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PublicHolidayState].
extension PublicHolidayStatePatterns on PublicHolidayState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PublicHolidayState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PublicHolidayState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PublicHolidayState value)  $default,){
final _that = this;
switch (_that) {
case _PublicHolidayState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PublicHolidayState value)?  $default,){
final _that = this;
switch (_that) {
case _PublicHolidayState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<PublicHoliday> publicHolidays,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PublicHolidayState() when $default != null:
return $default(_that.isLoading,_that.publicHolidays,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<PublicHoliday> publicHolidays,  String? error)  $default,) {final _that = this;
switch (_that) {
case _PublicHolidayState():
return $default(_that.isLoading,_that.publicHolidays,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<PublicHoliday> publicHolidays,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _PublicHolidayState() when $default != null:
return $default(_that.isLoading,_that.publicHolidays,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _PublicHolidayState implements PublicHolidayState {
   _PublicHolidayState({this.isLoading = false, final  List<PublicHoliday> publicHolidays = const [], this.error}): _publicHolidays = publicHolidays;
  

@override@JsonKey() final  bool isLoading;
 final  List<PublicHoliday> _publicHolidays;
@override@JsonKey() List<PublicHoliday> get publicHolidays {
  if (_publicHolidays is EqualUnmodifiableListView) return _publicHolidays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_publicHolidays);
}

@override final  String? error;

/// Create a copy of PublicHolidayState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PublicHolidayStateCopyWith<_PublicHolidayState> get copyWith => __$PublicHolidayStateCopyWithImpl<_PublicHolidayState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PublicHolidayState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._publicHolidays, _publicHolidays)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_publicHolidays),error);

@override
String toString() {
  return 'PublicHolidayState(isLoading: $isLoading, publicHolidays: $publicHolidays, error: $error)';
}


}

/// @nodoc
abstract mixin class _$PublicHolidayStateCopyWith<$Res> implements $PublicHolidayStateCopyWith<$Res> {
  factory _$PublicHolidayStateCopyWith(_PublicHolidayState value, $Res Function(_PublicHolidayState) _then) = __$PublicHolidayStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<PublicHoliday> publicHolidays, String? error
});




}
/// @nodoc
class __$PublicHolidayStateCopyWithImpl<$Res>
    implements _$PublicHolidayStateCopyWith<$Res> {
  __$PublicHolidayStateCopyWithImpl(this._self, this._then);

  final _PublicHolidayState _self;
  final $Res Function(_PublicHolidayState) _then;

/// Create a copy of PublicHolidayState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? publicHolidays = null,Object? error = freezed,}) {
  return _then(_PublicHolidayState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,publicHolidays: null == publicHolidays ? _self._publicHolidays : publicHolidays // ignore: cast_nullable_to_non_nullable
as List<PublicHoliday>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
