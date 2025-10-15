// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_read_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationReadResponse {

@JsonKey(name: 'status') String get status;@JsonKey(name: 'data') NotificationReadItem get data;
/// Create a copy of NotificationReadResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationReadResponseCopyWith<NotificationReadResponse> get copyWith => _$NotificationReadResponseCopyWithImpl<NotificationReadResponse>(this as NotificationReadResponse, _$identity);

  /// Serializes this NotificationReadResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationReadResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'NotificationReadResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $NotificationReadResponseCopyWith<$Res>  {
  factory $NotificationReadResponseCopyWith(NotificationReadResponse value, $Res Function(NotificationReadResponse) _then) = _$NotificationReadResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status') String status,@JsonKey(name: 'data') NotificationReadItem data
});


$NotificationReadItemCopyWith<$Res> get data;

}
/// @nodoc
class _$NotificationReadResponseCopyWithImpl<$Res>
    implements $NotificationReadResponseCopyWith<$Res> {
  _$NotificationReadResponseCopyWithImpl(this._self, this._then);

  final NotificationReadResponse _self;
  final $Res Function(NotificationReadResponse) _then;

/// Create a copy of NotificationReadResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NotificationReadItem,
  ));
}
/// Create a copy of NotificationReadResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationReadItemCopyWith<$Res> get data {
  
  return $NotificationReadItemCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [NotificationReadResponse].
extension NotificationReadResponsePatterns on NotificationReadResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationReadResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationReadResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationReadResponse value)  $default,){
final _that = this;
switch (_that) {
case _NotificationReadResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationReadResponse value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationReadResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String status, @JsonKey(name: 'data')  NotificationReadItem data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationReadResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String status, @JsonKey(name: 'data')  NotificationReadItem data)  $default,) {final _that = this;
switch (_that) {
case _NotificationReadResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'status')  String status, @JsonKey(name: 'data')  NotificationReadItem data)?  $default,) {final _that = this;
switch (_that) {
case _NotificationReadResponse() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationReadResponse implements NotificationReadResponse {
  const _NotificationReadResponse({@JsonKey(name: 'status') required this.status, @JsonKey(name: 'data') required this.data});
  factory _NotificationReadResponse.fromJson(Map<String, dynamic> json) => _$NotificationReadResponseFromJson(json);

@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'data') final  NotificationReadItem data;

/// Create a copy of NotificationReadResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationReadResponseCopyWith<_NotificationReadResponse> get copyWith => __$NotificationReadResponseCopyWithImpl<_NotificationReadResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationReadResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationReadResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'NotificationReadResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$NotificationReadResponseCopyWith<$Res> implements $NotificationReadResponseCopyWith<$Res> {
  factory _$NotificationReadResponseCopyWith(_NotificationReadResponse value, $Res Function(_NotificationReadResponse) _then) = __$NotificationReadResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status') String status,@JsonKey(name: 'data') NotificationReadItem data
});


@override $NotificationReadItemCopyWith<$Res> get data;

}
/// @nodoc
class __$NotificationReadResponseCopyWithImpl<$Res>
    implements _$NotificationReadResponseCopyWith<$Res> {
  __$NotificationReadResponseCopyWithImpl(this._self, this._then);

  final _NotificationReadResponse _self;
  final $Res Function(_NotificationReadResponse) _then;

/// Create a copy of NotificationReadResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,}) {
  return _then(_NotificationReadResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NotificationReadItem,
  ));
}

/// Create a copy of NotificationReadResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationReadItemCopyWith<$Res> get data {
  
  return $NotificationReadItemCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$NotificationReadItem {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'userId') int get userId;@JsonKey(name: 'notificationId') int get notificationId;@JsonKey(name: 'isRead') bool get isRead;@JsonKey(name: 'readAt') String get readAt;
/// Create a copy of NotificationReadItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationReadItemCopyWith<NotificationReadItem> get copyWith => _$NotificationReadItemCopyWithImpl<NotificationReadItem>(this as NotificationReadItem, _$identity);

  /// Serializes this NotificationReadItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationReadItem&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.readAt, readAt) || other.readAt == readAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,notificationId,isRead,readAt);

@override
String toString() {
  return 'NotificationReadItem(id: $id, userId: $userId, notificationId: $notificationId, isRead: $isRead, readAt: $readAt)';
}


}

/// @nodoc
abstract mixin class $NotificationReadItemCopyWith<$Res>  {
  factory $NotificationReadItemCopyWith(NotificationReadItem value, $Res Function(NotificationReadItem) _then) = _$NotificationReadItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'userId') int userId,@JsonKey(name: 'notificationId') int notificationId,@JsonKey(name: 'isRead') bool isRead,@JsonKey(name: 'readAt') String readAt
});




}
/// @nodoc
class _$NotificationReadItemCopyWithImpl<$Res>
    implements $NotificationReadItemCopyWith<$Res> {
  _$NotificationReadItemCopyWithImpl(this._self, this._then);

  final NotificationReadItem _self;
  final $Res Function(NotificationReadItem) _then;

/// Create a copy of NotificationReadItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? notificationId = null,Object? isRead = null,Object? readAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,notificationId: null == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as int,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,readAt: null == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationReadItem].
extension NotificationReadItemPatterns on NotificationReadItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationReadItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationReadItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationReadItem value)  $default,){
final _that = this;
switch (_that) {
case _NotificationReadItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationReadItem value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationReadItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'userId')  int userId, @JsonKey(name: 'notificationId')  int notificationId, @JsonKey(name: 'isRead')  bool isRead, @JsonKey(name: 'readAt')  String readAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationReadItem() when $default != null:
return $default(_that.id,_that.userId,_that.notificationId,_that.isRead,_that.readAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'userId')  int userId, @JsonKey(name: 'notificationId')  int notificationId, @JsonKey(name: 'isRead')  bool isRead, @JsonKey(name: 'readAt')  String readAt)  $default,) {final _that = this;
switch (_that) {
case _NotificationReadItem():
return $default(_that.id,_that.userId,_that.notificationId,_that.isRead,_that.readAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'userId')  int userId, @JsonKey(name: 'notificationId')  int notificationId, @JsonKey(name: 'isRead')  bool isRead, @JsonKey(name: 'readAt')  String readAt)?  $default,) {final _that = this;
switch (_that) {
case _NotificationReadItem() when $default != null:
return $default(_that.id,_that.userId,_that.notificationId,_that.isRead,_that.readAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationReadItem implements NotificationReadItem {
  const _NotificationReadItem({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'userId') required this.userId, @JsonKey(name: 'notificationId') required this.notificationId, @JsonKey(name: 'isRead') required this.isRead, @JsonKey(name: 'readAt') required this.readAt});
  factory _NotificationReadItem.fromJson(Map<String, dynamic> json) => _$NotificationReadItemFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'userId') final  int userId;
@override@JsonKey(name: 'notificationId') final  int notificationId;
@override@JsonKey(name: 'isRead') final  bool isRead;
@override@JsonKey(name: 'readAt') final  String readAt;

/// Create a copy of NotificationReadItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationReadItemCopyWith<_NotificationReadItem> get copyWith => __$NotificationReadItemCopyWithImpl<_NotificationReadItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationReadItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationReadItem&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.readAt, readAt) || other.readAt == readAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,notificationId,isRead,readAt);

@override
String toString() {
  return 'NotificationReadItem(id: $id, userId: $userId, notificationId: $notificationId, isRead: $isRead, readAt: $readAt)';
}


}

/// @nodoc
abstract mixin class _$NotificationReadItemCopyWith<$Res> implements $NotificationReadItemCopyWith<$Res> {
  factory _$NotificationReadItemCopyWith(_NotificationReadItem value, $Res Function(_NotificationReadItem) _then) = __$NotificationReadItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'userId') int userId,@JsonKey(name: 'notificationId') int notificationId,@JsonKey(name: 'isRead') bool isRead,@JsonKey(name: 'readAt') String readAt
});




}
/// @nodoc
class __$NotificationReadItemCopyWithImpl<$Res>
    implements _$NotificationReadItemCopyWith<$Res> {
  __$NotificationReadItemCopyWithImpl(this._self, this._then);

  final _NotificationReadItem _self;
  final $Res Function(_NotificationReadItem) _then;

/// Create a copy of NotificationReadItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? notificationId = null,Object? isRead = null,Object? readAt = null,}) {
  return _then(_NotificationReadItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,notificationId: null == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as int,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,readAt: null == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
