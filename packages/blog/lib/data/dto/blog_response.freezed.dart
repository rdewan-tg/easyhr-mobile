// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BlogResponse {

 String get status; BlogResponseData get data;
/// Create a copy of BlogResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlogResponseCopyWith<BlogResponse> get copyWith => _$BlogResponseCopyWithImpl<BlogResponse>(this as BlogResponse, _$identity);

  /// Serializes this BlogResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlogResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'BlogResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $BlogResponseCopyWith<$Res>  {
  factory $BlogResponseCopyWith(BlogResponse value, $Res Function(BlogResponse) _then) = _$BlogResponseCopyWithImpl;
@useResult
$Res call({
 String status, BlogResponseData data
});


$BlogResponseDataCopyWith<$Res> get data;

}
/// @nodoc
class _$BlogResponseCopyWithImpl<$Res>
    implements $BlogResponseCopyWith<$Res> {
  _$BlogResponseCopyWithImpl(this._self, this._then);

  final BlogResponse _self;
  final $Res Function(BlogResponse) _then;

/// Create a copy of BlogResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BlogResponseData,
  ));
}
/// Create a copy of BlogResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BlogResponseDataCopyWith<$Res> get data {
  
  return $BlogResponseDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [BlogResponse].
extension BlogResponsePatterns on BlogResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BlogResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BlogResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BlogResponse value)  $default,){
final _that = this;
switch (_that) {
case _BlogResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BlogResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BlogResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  BlogResponseData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BlogResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  BlogResponseData data)  $default,) {final _that = this;
switch (_that) {
case _BlogResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  BlogResponseData data)?  $default,) {final _that = this;
switch (_that) {
case _BlogResponse() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BlogResponse implements BlogResponse {
   _BlogResponse({required this.status, required this.data});
  factory _BlogResponse.fromJson(Map<String, dynamic> json) => _$BlogResponseFromJson(json);

@override final  String status;
@override final  BlogResponseData data;

/// Create a copy of BlogResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlogResponseCopyWith<_BlogResponse> get copyWith => __$BlogResponseCopyWithImpl<_BlogResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BlogResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlogResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'BlogResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BlogResponseCopyWith<$Res> implements $BlogResponseCopyWith<$Res> {
  factory _$BlogResponseCopyWith(_BlogResponse value, $Res Function(_BlogResponse) _then) = __$BlogResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, BlogResponseData data
});


@override $BlogResponseDataCopyWith<$Res> get data;

}
/// @nodoc
class __$BlogResponseCopyWithImpl<$Res>
    implements _$BlogResponseCopyWith<$Res> {
  __$BlogResponseCopyWithImpl(this._self, this._then);

  final _BlogResponse _self;
  final $Res Function(_BlogResponse) _then;

/// Create a copy of BlogResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,}) {
  return _then(_BlogResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BlogResponseData,
  ));
}

/// Create a copy of BlogResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BlogResponseDataCopyWith<$Res> get data {
  
  return $BlogResponseDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$BlogResponseData {

@JsonKey(name: "id") int get id;@JsonKey(name: "title") String get title;@JsonKey(name: "content") String get content;@JsonKey(name: "image") String? get image;@JsonKey(name: "imageUrl") String? get imageUrl;@JsonKey(name: "isActive") bool get isActive;@JsonKey(name: "createdAt") String get createdAt;@JsonKey(name: "updatedAt") String get updatedAt;
/// Create a copy of BlogResponseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlogResponseDataCopyWith<BlogResponseData> get copyWith => _$BlogResponseDataCopyWithImpl<BlogResponseData>(this as BlogResponseData, _$identity);

  /// Serializes this BlogResponseData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlogResponseData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.image, image) || other.image == image)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,content,image,imageUrl,isActive,createdAt,updatedAt);

@override
String toString() {
  return 'BlogResponseData(id: $id, title: $title, content: $content, image: $image, imageUrl: $imageUrl, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $BlogResponseDataCopyWith<$Res>  {
  factory $BlogResponseDataCopyWith(BlogResponseData value, $Res Function(BlogResponseData) _then) = _$BlogResponseDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "title") String title,@JsonKey(name: "content") String content,@JsonKey(name: "image") String? image,@JsonKey(name: "imageUrl") String? imageUrl,@JsonKey(name: "isActive") bool isActive,@JsonKey(name: "createdAt") String createdAt,@JsonKey(name: "updatedAt") String updatedAt
});




}
/// @nodoc
class _$BlogResponseDataCopyWithImpl<$Res>
    implements $BlogResponseDataCopyWith<$Res> {
  _$BlogResponseDataCopyWithImpl(this._self, this._then);

  final BlogResponseData _self;
  final $Res Function(BlogResponseData) _then;

/// Create a copy of BlogResponseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? content = null,Object? image = freezed,Object? imageUrl = freezed,Object? isActive = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BlogResponseData].
extension BlogResponseDataPatterns on BlogResponseData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BlogResponseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BlogResponseData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BlogResponseData value)  $default,){
final _that = this;
switch (_that) {
case _BlogResponseData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BlogResponseData value)?  $default,){
final _that = this;
switch (_that) {
case _BlogResponseData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "title")  String title, @JsonKey(name: "content")  String content, @JsonKey(name: "image")  String? image, @JsonKey(name: "imageUrl")  String? imageUrl, @JsonKey(name: "isActive")  bool isActive, @JsonKey(name: "createdAt")  String createdAt, @JsonKey(name: "updatedAt")  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BlogResponseData() when $default != null:
return $default(_that.id,_that.title,_that.content,_that.image,_that.imageUrl,_that.isActive,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "title")  String title, @JsonKey(name: "content")  String content, @JsonKey(name: "image")  String? image, @JsonKey(name: "imageUrl")  String? imageUrl, @JsonKey(name: "isActive")  bool isActive, @JsonKey(name: "createdAt")  String createdAt, @JsonKey(name: "updatedAt")  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _BlogResponseData():
return $default(_that.id,_that.title,_that.content,_that.image,_that.imageUrl,_that.isActive,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int id, @JsonKey(name: "title")  String title, @JsonKey(name: "content")  String content, @JsonKey(name: "image")  String? image, @JsonKey(name: "imageUrl")  String? imageUrl, @JsonKey(name: "isActive")  bool isActive, @JsonKey(name: "createdAt")  String createdAt, @JsonKey(name: "updatedAt")  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _BlogResponseData() when $default != null:
return $default(_that.id,_that.title,_that.content,_that.image,_that.imageUrl,_that.isActive,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BlogResponseData implements BlogResponseData {
  const _BlogResponseData({@JsonKey(name: "id") required this.id, @JsonKey(name: "title") required this.title, @JsonKey(name: "content") required this.content, @JsonKey(name: "image") this.image, @JsonKey(name: "imageUrl") this.imageUrl, @JsonKey(name: "isActive") required this.isActive, @JsonKey(name: "createdAt") required this.createdAt, @JsonKey(name: "updatedAt") required this.updatedAt});
  factory _BlogResponseData.fromJson(Map<String, dynamic> json) => _$BlogResponseDataFromJson(json);

@override@JsonKey(name: "id") final  int id;
@override@JsonKey(name: "title") final  String title;
@override@JsonKey(name: "content") final  String content;
@override@JsonKey(name: "image") final  String? image;
@override@JsonKey(name: "imageUrl") final  String? imageUrl;
@override@JsonKey(name: "isActive") final  bool isActive;
@override@JsonKey(name: "createdAt") final  String createdAt;
@override@JsonKey(name: "updatedAt") final  String updatedAt;

/// Create a copy of BlogResponseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlogResponseDataCopyWith<_BlogResponseData> get copyWith => __$BlogResponseDataCopyWithImpl<_BlogResponseData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BlogResponseDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlogResponseData&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.image, image) || other.image == image)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,content,image,imageUrl,isActive,createdAt,updatedAt);

@override
String toString() {
  return 'BlogResponseData(id: $id, title: $title, content: $content, image: $image, imageUrl: $imageUrl, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$BlogResponseDataCopyWith<$Res> implements $BlogResponseDataCopyWith<$Res> {
  factory _$BlogResponseDataCopyWith(_BlogResponseData value, $Res Function(_BlogResponseData) _then) = __$BlogResponseDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "title") String title,@JsonKey(name: "content") String content,@JsonKey(name: "image") String? image,@JsonKey(name: "imageUrl") String? imageUrl,@JsonKey(name: "isActive") bool isActive,@JsonKey(name: "createdAt") String createdAt,@JsonKey(name: "updatedAt") String updatedAt
});




}
/// @nodoc
class __$BlogResponseDataCopyWithImpl<$Res>
    implements _$BlogResponseDataCopyWith<$Res> {
  __$BlogResponseDataCopyWithImpl(this._self, this._then);

  final _BlogResponseData _self;
  final $Res Function(_BlogResponseData) _then;

/// Create a copy of BlogResponseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? content = null,Object? image = freezed,Object? imageUrl = freezed,Object? isActive = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_BlogResponseData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
