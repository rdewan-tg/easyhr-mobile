// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AttendanceListModel {

 List<AttendanceModel> get data; Page get page;
/// Create a copy of AttendanceListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceListModelCopyWith<AttendanceListModel> get copyWith => _$AttendanceListModelCopyWithImpl<AttendanceListModel>(this as AttendanceListModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceListModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),page);

@override
String toString() {
  return 'AttendanceListModel(data: $data, page: $page)';
}


}

/// @nodoc
abstract mixin class $AttendanceListModelCopyWith<$Res>  {
  factory $AttendanceListModelCopyWith(AttendanceListModel value, $Res Function(AttendanceListModel) _then) = _$AttendanceListModelCopyWithImpl;
@useResult
$Res call({
 List<AttendanceModel> data, Page page
});


$PageCopyWith<$Res> get page;

}
/// @nodoc
class _$AttendanceListModelCopyWithImpl<$Res>
    implements $AttendanceListModelCopyWith<$Res> {
  _$AttendanceListModelCopyWithImpl(this._self, this._then);

  final AttendanceListModel _self;
  final $Res Function(AttendanceListModel) _then;

/// Create a copy of AttendanceListModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? page = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AttendanceModel>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as Page,
  ));
}
/// Create a copy of AttendanceListModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PageCopyWith<$Res> get page {
  
  return $PageCopyWith<$Res>(_self.page, (value) {
    return _then(_self.copyWith(page: value));
  });
}
}


/// Adds pattern-matching-related methods to [AttendanceListModel].
extension AttendanceListModelPatterns on AttendanceListModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceListModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceListModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceListModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceListModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceListModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceListModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AttendanceModel> data,  Page page)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceListModel() when $default != null:
return $default(_that.data,_that.page);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AttendanceModel> data,  Page page)  $default,) {final _that = this;
switch (_that) {
case _AttendanceListModel():
return $default(_that.data,_that.page);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AttendanceModel> data,  Page page)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceListModel() when $default != null:
return $default(_that.data,_that.page);case _:
  return null;

}
}

}

/// @nodoc


class _AttendanceListModel implements AttendanceListModel {
  const _AttendanceListModel({final  List<AttendanceModel> data = const [], required this.page}): _data = data;
  

 final  List<AttendanceModel> _data;
@override@JsonKey() List<AttendanceModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  Page page;

/// Create a copy of AttendanceListModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceListModelCopyWith<_AttendanceListModel> get copyWith => __$AttendanceListModelCopyWithImpl<_AttendanceListModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceListModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),page);

@override
String toString() {
  return 'AttendanceListModel(data: $data, page: $page)';
}


}

/// @nodoc
abstract mixin class _$AttendanceListModelCopyWith<$Res> implements $AttendanceListModelCopyWith<$Res> {
  factory _$AttendanceListModelCopyWith(_AttendanceListModel value, $Res Function(_AttendanceListModel) _then) = __$AttendanceListModelCopyWithImpl;
@override @useResult
$Res call({
 List<AttendanceModel> data, Page page
});


@override $PageCopyWith<$Res> get page;

}
/// @nodoc
class __$AttendanceListModelCopyWithImpl<$Res>
    implements _$AttendanceListModelCopyWith<$Res> {
  __$AttendanceListModelCopyWithImpl(this._self, this._then);

  final _AttendanceListModel _self;
  final $Res Function(_AttendanceListModel) _then;

/// Create a copy of AttendanceListModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? page = null,}) {
  return _then(_AttendanceListModel(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AttendanceModel>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as Page,
  ));
}

/// Create a copy of AttendanceListModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PageCopyWith<$Res> get page {
  
  return $PageCopyWith<$Res>(_self.page, (value) {
    return _then(_self.copyWith(page: value));
  });
}
}

// dart format on
