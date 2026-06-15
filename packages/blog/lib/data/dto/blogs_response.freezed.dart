// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blogs_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BlogsResponse {

@JsonKey(name: "status") String get status;@JsonKey(name: "data") List<BlogResponseData> get data;
/// Create a copy of BlogsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlogsResponseCopyWith<BlogsResponse> get copyWith => _$BlogsResponseCopyWithImpl<BlogsResponse>(this as BlogsResponse, _$identity);

  /// Serializes this BlogsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlogsResponse&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BlogsResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $BlogsResponseCopyWith<$Res>  {
  factory $BlogsResponseCopyWith(BlogsResponse value, $Res Function(BlogsResponse) _then) = _$BlogsResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "data") List<BlogResponseData> data
});




}
/// @nodoc
class _$BlogsResponseCopyWithImpl<$Res>
    implements $BlogsResponseCopyWith<$Res> {
  _$BlogsResponseCopyWithImpl(this._self, this._then);

  final BlogsResponse _self;
  final $Res Function(BlogsResponse) _then;

/// Create a copy of BlogsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<BlogResponseData>,
  ));
}

}


/// Adds pattern-matching-related methods to [BlogsResponse].
extension BlogsResponsePatterns on BlogsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BlogsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BlogsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BlogsResponse value)  $default,){
final _that = this;
switch (_that) {
case _BlogsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BlogsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BlogsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  List<BlogResponseData> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BlogsResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  List<BlogResponseData> data)  $default,) {final _that = this;
switch (_that) {
case _BlogsResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  List<BlogResponseData> data)?  $default,) {final _that = this;
switch (_that) {
case _BlogsResponse() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BlogsResponse implements BlogsResponse {
   _BlogsResponse({@JsonKey(name: "status") required this.status, @JsonKey(name: "data") final  List<BlogResponseData> data = const []}): _data = data;
  factory _BlogsResponse.fromJson(Map<String, dynamic> json) => _$BlogsResponseFromJson(json);

@override@JsonKey(name: "status") final  String status;
 final  List<BlogResponseData> _data;
@override@JsonKey(name: "data") List<BlogResponseData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of BlogsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlogsResponseCopyWith<_BlogsResponse> get copyWith => __$BlogsResponseCopyWithImpl<_BlogsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BlogsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlogsResponse&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'BlogsResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BlogsResponseCopyWith<$Res> implements $BlogsResponseCopyWith<$Res> {
  factory _$BlogsResponseCopyWith(_BlogsResponse value, $Res Function(_BlogsResponse) _then) = __$BlogsResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "data") List<BlogResponseData> data
});




}
/// @nodoc
class __$BlogsResponseCopyWithImpl<$Res>
    implements _$BlogsResponseCopyWith<$Res> {
  __$BlogsResponseCopyWithImpl(this._self, this._then);

  final _BlogsResponse _self;
  final $Res Function(_BlogsResponse) _then;

/// Create a copy of BlogsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,}) {
  return _then(_BlogsResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<BlogResponseData>,
  ));
}


}

// dart format on
