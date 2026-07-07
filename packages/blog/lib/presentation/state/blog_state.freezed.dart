// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BlogState {

 bool get isLoading; List<BlogModel> get blogs; BlogModel? get blog; String? get error;
/// Create a copy of BlogState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlogStateCopyWith<BlogState> get copyWith => _$BlogStateCopyWithImpl<BlogState>(this as BlogState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlogState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.blogs, blogs)&&(identical(other.blog, blog) || other.blog == blog)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(blogs),blog,error);

@override
String toString() {
  return 'BlogState(isLoading: $isLoading, blogs: $blogs, blog: $blog, error: $error)';
}


}

/// @nodoc
abstract mixin class $BlogStateCopyWith<$Res>  {
  factory $BlogStateCopyWith(BlogState value, $Res Function(BlogState) _then) = _$BlogStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<BlogModel> blogs, BlogModel? blog, String? error
});


$BlogModelCopyWith<$Res>? get blog;

}
/// @nodoc
class _$BlogStateCopyWithImpl<$Res>
    implements $BlogStateCopyWith<$Res> {
  _$BlogStateCopyWithImpl(this._self, this._then);

  final BlogState _self;
  final $Res Function(BlogState) _then;

/// Create a copy of BlogState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? blogs = null,Object? blog = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,blogs: null == blogs ? _self.blogs : blogs // ignore: cast_nullable_to_non_nullable
as List<BlogModel>,blog: freezed == blog ? _self.blog : blog // ignore: cast_nullable_to_non_nullable
as BlogModel?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of BlogState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BlogModelCopyWith<$Res>? get blog {
    if (_self.blog == null) {
    return null;
  }

  return $BlogModelCopyWith<$Res>(_self.blog!, (value) {
    return _then(_self.copyWith(blog: value));
  });
}
}


/// Adds pattern-matching-related methods to [BlogState].
extension BlogStatePatterns on BlogState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BlogState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BlogState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BlogState value)  $default,){
final _that = this;
switch (_that) {
case _BlogState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BlogState value)?  $default,){
final _that = this;
switch (_that) {
case _BlogState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<BlogModel> blogs,  BlogModel? blog,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BlogState() when $default != null:
return $default(_that.isLoading,_that.blogs,_that.blog,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<BlogModel> blogs,  BlogModel? blog,  String? error)  $default,) {final _that = this;
switch (_that) {
case _BlogState():
return $default(_that.isLoading,_that.blogs,_that.blog,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<BlogModel> blogs,  BlogModel? blog,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _BlogState() when $default != null:
return $default(_that.isLoading,_that.blogs,_that.blog,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _BlogState implements BlogState {
   _BlogState({this.isLoading = false, final  List<BlogModel> blogs = const [], this.blog, this.error}): _blogs = blogs;
  

@override@JsonKey() final  bool isLoading;
 final  List<BlogModel> _blogs;
@override@JsonKey() List<BlogModel> get blogs {
  if (_blogs is EqualUnmodifiableListView) return _blogs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_blogs);
}

@override final  BlogModel? blog;
@override final  String? error;

/// Create a copy of BlogState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlogStateCopyWith<_BlogState> get copyWith => __$BlogStateCopyWithImpl<_BlogState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlogState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._blogs, _blogs)&&(identical(other.blog, blog) || other.blog == blog)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_blogs),blog,error);

@override
String toString() {
  return 'BlogState(isLoading: $isLoading, blogs: $blogs, blog: $blog, error: $error)';
}


}

/// @nodoc
abstract mixin class _$BlogStateCopyWith<$Res> implements $BlogStateCopyWith<$Res> {
  factory _$BlogStateCopyWith(_BlogState value, $Res Function(_BlogState) _then) = __$BlogStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<BlogModel> blogs, BlogModel? blog, String? error
});


@override $BlogModelCopyWith<$Res>? get blog;

}
/// @nodoc
class __$BlogStateCopyWithImpl<$Res>
    implements _$BlogStateCopyWith<$Res> {
  __$BlogStateCopyWithImpl(this._self, this._then);

  final _BlogState _self;
  final $Res Function(_BlogState) _then;

/// Create a copy of BlogState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? blogs = null,Object? blog = freezed,Object? error = freezed,}) {
  return _then(_BlogState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,blogs: null == blogs ? _self._blogs : blogs // ignore: cast_nullable_to_non_nullable
as List<BlogModel>,blog: freezed == blog ? _self.blog : blog // ignore: cast_nullable_to_non_nullable
as BlogModel?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of BlogState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BlogModelCopyWith<$Res>? get blog {
    if (_self.blog == null) {
    return null;
  }

  return $BlogModelCopyWith<$Res>(_self.blog!, (value) {
    return _then(_self.copyWith(blog: value));
  });
}
}

// dart format on
