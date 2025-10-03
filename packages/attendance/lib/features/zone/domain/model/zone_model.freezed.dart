// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zone_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ZoneModel {

 int get id; String get name; String? get description; double get latitude; double get longitude; bool get isActive; int get version;
/// Create a copy of ZoneModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZoneModelCopyWith<ZoneModel> get copyWith => _$ZoneModelCopyWithImpl<ZoneModel>(this as ZoneModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZoneModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.version, version) || other.version == version));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,latitude,longitude,isActive,version);

@override
String toString() {
  return 'ZoneModel(id: $id, name: $name, description: $description, latitude: $latitude, longitude: $longitude, isActive: $isActive, version: $version)';
}


}

/// @nodoc
abstract mixin class $ZoneModelCopyWith<$Res>  {
  factory $ZoneModelCopyWith(ZoneModel value, $Res Function(ZoneModel) _then) = _$ZoneModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? description, double latitude, double longitude, bool isActive, int version
});




}
/// @nodoc
class _$ZoneModelCopyWithImpl<$Res>
    implements $ZoneModelCopyWith<$Res> {
  _$ZoneModelCopyWithImpl(this._self, this._then);

  final ZoneModel _self;
  final $Res Function(ZoneModel) _then;

/// Create a copy of ZoneModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? latitude = null,Object? longitude = null,Object? isActive = null,Object? version = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ZoneModel].
extension ZoneModelPatterns on ZoneModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZoneModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZoneModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZoneModel value)  $default,){
final _that = this;
switch (_that) {
case _ZoneModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZoneModel value)?  $default,){
final _that = this;
switch (_that) {
case _ZoneModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? description,  double latitude,  double longitude,  bool isActive,  int version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ZoneModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.latitude,_that.longitude,_that.isActive,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? description,  double latitude,  double longitude,  bool isActive,  int version)  $default,) {final _that = this;
switch (_that) {
case _ZoneModel():
return $default(_that.id,_that.name,_that.description,_that.latitude,_that.longitude,_that.isActive,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? description,  double latitude,  double longitude,  bool isActive,  int version)?  $default,) {final _that = this;
switch (_that) {
case _ZoneModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.latitude,_that.longitude,_that.isActive,_that.version);case _:
  return null;

}
}

}

/// @nodoc


class _ZoneModel implements ZoneModel {
  const _ZoneModel({required this.id, required this.name, this.description, required this.latitude, required this.longitude, required this.isActive, required this.version});
  

@override final  int id;
@override final  String name;
@override final  String? description;
@override final  double latitude;
@override final  double longitude;
@override final  bool isActive;
@override final  int version;

/// Create a copy of ZoneModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZoneModelCopyWith<_ZoneModel> get copyWith => __$ZoneModelCopyWithImpl<_ZoneModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZoneModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.version, version) || other.version == version));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,latitude,longitude,isActive,version);

@override
String toString() {
  return 'ZoneModel(id: $id, name: $name, description: $description, latitude: $latitude, longitude: $longitude, isActive: $isActive, version: $version)';
}


}

/// @nodoc
abstract mixin class _$ZoneModelCopyWith<$Res> implements $ZoneModelCopyWith<$Res> {
  factory _$ZoneModelCopyWith(_ZoneModel value, $Res Function(_ZoneModel) _then) = __$ZoneModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? description, double latitude, double longitude, bool isActive, int version
});




}
/// @nodoc
class __$ZoneModelCopyWithImpl<$Res>
    implements _$ZoneModelCopyWith<$Res> {
  __$ZoneModelCopyWithImpl(this._self, this._then);

  final _ZoneModel _self;
  final $Res Function(_ZoneModel) _then;

/// Create a copy of ZoneModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? latitude = null,Object? longitude = null,Object? isActive = null,Object? version = null,}) {
  return _then(_ZoneModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
