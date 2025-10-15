// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zone_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ZoneReponse {

@JsonKey(name: "status") String get status;@JsonKey(name: "data") List<ZoneData> get data;
/// Create a copy of ZoneReponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZoneReponseCopyWith<ZoneReponse> get copyWith => _$ZoneReponseCopyWithImpl<ZoneReponse>(this as ZoneReponse, _$identity);

  /// Serializes this ZoneReponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZoneReponse&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ZoneReponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $ZoneReponseCopyWith<$Res>  {
  factory $ZoneReponseCopyWith(ZoneReponse value, $Res Function(ZoneReponse) _then) = _$ZoneReponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "data") List<ZoneData> data
});




}
/// @nodoc
class _$ZoneReponseCopyWithImpl<$Res>
    implements $ZoneReponseCopyWith<$Res> {
  _$ZoneReponseCopyWithImpl(this._self, this._then);

  final ZoneReponse _self;
  final $Res Function(ZoneReponse) _then;

/// Create a copy of ZoneReponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ZoneData>,
  ));
}

}


/// Adds pattern-matching-related methods to [ZoneReponse].
extension ZoneReponsePatterns on ZoneReponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZoneReponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZoneReponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZoneReponse value)  $default,){
final _that = this;
switch (_that) {
case _ZoneReponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZoneReponse value)?  $default,){
final _that = this;
switch (_that) {
case _ZoneReponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  List<ZoneData> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ZoneReponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  List<ZoneData> data)  $default,) {final _that = this;
switch (_that) {
case _ZoneReponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "status")  String status, @JsonKey(name: "data")  List<ZoneData> data)?  $default,) {final _that = this;
switch (_that) {
case _ZoneReponse() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZoneReponse implements ZoneReponse {
  const _ZoneReponse({@JsonKey(name: "status") required this.status, @JsonKey(name: "data") required final  List<ZoneData> data}): _data = data;
  factory _ZoneReponse.fromJson(Map<String, dynamic> json) => _$ZoneReponseFromJson(json);

@override@JsonKey(name: "status") final  String status;
 final  List<ZoneData> _data;
@override@JsonKey(name: "data") List<ZoneData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ZoneReponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZoneReponseCopyWith<_ZoneReponse> get copyWith => __$ZoneReponseCopyWithImpl<_ZoneReponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZoneReponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZoneReponse&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ZoneReponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ZoneReponseCopyWith<$Res> implements $ZoneReponseCopyWith<$Res> {
  factory _$ZoneReponseCopyWith(_ZoneReponse value, $Res Function(_ZoneReponse) _then) = __$ZoneReponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "status") String status,@JsonKey(name: "data") List<ZoneData> data
});




}
/// @nodoc
class __$ZoneReponseCopyWithImpl<$Res>
    implements _$ZoneReponseCopyWith<$Res> {
  __$ZoneReponseCopyWithImpl(this._self, this._then);

  final _ZoneReponse _self;
  final $Res Function(_ZoneReponse) _then;

/// Create a copy of ZoneReponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,}) {
  return _then(_ZoneReponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ZoneData>,
  ));
}


}


/// @nodoc
mixin _$ZoneData {

@JsonKey(name: "id") int get id;@JsonKey(name: "name") String get name;@JsonKey(name: "description") String? get description;@JsonKey(name: "latitude", fromJson: _doubleFromString) double get latitude;@JsonKey(name: "longitude", fromJson: _doubleFromString) double get longitude;@JsonKey(name: "isActive") bool get isActive;@JsonKey(name: "version") int get version;@JsonKey(name: "companyId") int get companyId;@JsonKey(name: "createdAt") DateTime get createdAt;@JsonKey(name: "updatedAt") DateTime get updatedAt;
/// Create a copy of ZoneData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZoneDataCopyWith<ZoneData> get copyWith => _$ZoneDataCopyWithImpl<ZoneData>(this as ZoneData, _$identity);

  /// Serializes this ZoneData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ZoneData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.version, version) || other.version == version)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,latitude,longitude,isActive,version,companyId,createdAt,updatedAt);

@override
String toString() {
  return 'ZoneData(id: $id, name: $name, description: $description, latitude: $latitude, longitude: $longitude, isActive: $isActive, version: $version, companyId: $companyId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ZoneDataCopyWith<$Res>  {
  factory $ZoneDataCopyWith(ZoneData value, $Res Function(ZoneData) _then) = _$ZoneDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "name") String name,@JsonKey(name: "description") String? description,@JsonKey(name: "latitude", fromJson: _doubleFromString) double latitude,@JsonKey(name: "longitude", fromJson: _doubleFromString) double longitude,@JsonKey(name: "isActive") bool isActive,@JsonKey(name: "version") int version,@JsonKey(name: "companyId") int companyId,@JsonKey(name: "createdAt") DateTime createdAt,@JsonKey(name: "updatedAt") DateTime updatedAt
});




}
/// @nodoc
class _$ZoneDataCopyWithImpl<$Res>
    implements $ZoneDataCopyWith<$Res> {
  _$ZoneDataCopyWithImpl(this._self, this._then);

  final ZoneData _self;
  final $Res Function(ZoneData) _then;

/// Create a copy of ZoneData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? latitude = null,Object? longitude = null,Object? isActive = null,Object? version = null,Object? companyId = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ZoneData].
extension ZoneDataPatterns on ZoneData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ZoneData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ZoneData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ZoneData value)  $default,){
final _that = this;
switch (_that) {
case _ZoneData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ZoneData value)?  $default,){
final _that = this;
switch (_that) {
case _ZoneData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "name")  String name, @JsonKey(name: "description")  String? description, @JsonKey(name: "latitude", fromJson: _doubleFromString)  double latitude, @JsonKey(name: "longitude", fromJson: _doubleFromString)  double longitude, @JsonKey(name: "isActive")  bool isActive, @JsonKey(name: "version")  int version, @JsonKey(name: "companyId")  int companyId, @JsonKey(name: "createdAt")  DateTime createdAt, @JsonKey(name: "updatedAt")  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ZoneData() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.latitude,_that.longitude,_that.isActive,_that.version,_that.companyId,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int id, @JsonKey(name: "name")  String name, @JsonKey(name: "description")  String? description, @JsonKey(name: "latitude", fromJson: _doubleFromString)  double latitude, @JsonKey(name: "longitude", fromJson: _doubleFromString)  double longitude, @JsonKey(name: "isActive")  bool isActive, @JsonKey(name: "version")  int version, @JsonKey(name: "companyId")  int companyId, @JsonKey(name: "createdAt")  DateTime createdAt, @JsonKey(name: "updatedAt")  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ZoneData():
return $default(_that.id,_that.name,_that.description,_that.latitude,_that.longitude,_that.isActive,_that.version,_that.companyId,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int id, @JsonKey(name: "name")  String name, @JsonKey(name: "description")  String? description, @JsonKey(name: "latitude", fromJson: _doubleFromString)  double latitude, @JsonKey(name: "longitude", fromJson: _doubleFromString)  double longitude, @JsonKey(name: "isActive")  bool isActive, @JsonKey(name: "version")  int version, @JsonKey(name: "companyId")  int companyId, @JsonKey(name: "createdAt")  DateTime createdAt, @JsonKey(name: "updatedAt")  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ZoneData() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.latitude,_that.longitude,_that.isActive,_that.version,_that.companyId,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ZoneData implements ZoneData {
  const _ZoneData({@JsonKey(name: "id") required this.id, @JsonKey(name: "name") required this.name, @JsonKey(name: "description") this.description, @JsonKey(name: "latitude", fromJson: _doubleFromString) required this.latitude, @JsonKey(name: "longitude", fromJson: _doubleFromString) required this.longitude, @JsonKey(name: "isActive") required this.isActive, @JsonKey(name: "version") required this.version, @JsonKey(name: "companyId") required this.companyId, @JsonKey(name: "createdAt") required this.createdAt, @JsonKey(name: "updatedAt") required this.updatedAt});
  factory _ZoneData.fromJson(Map<String, dynamic> json) => _$ZoneDataFromJson(json);

@override@JsonKey(name: "id") final  int id;
@override@JsonKey(name: "name") final  String name;
@override@JsonKey(name: "description") final  String? description;
@override@JsonKey(name: "latitude", fromJson: _doubleFromString) final  double latitude;
@override@JsonKey(name: "longitude", fromJson: _doubleFromString) final  double longitude;
@override@JsonKey(name: "isActive") final  bool isActive;
@override@JsonKey(name: "version") final  int version;
@override@JsonKey(name: "companyId") final  int companyId;
@override@JsonKey(name: "createdAt") final  DateTime createdAt;
@override@JsonKey(name: "updatedAt") final  DateTime updatedAt;

/// Create a copy of ZoneData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ZoneDataCopyWith<_ZoneData> get copyWith => __$ZoneDataCopyWithImpl<_ZoneData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ZoneDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ZoneData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.version, version) || other.version == version)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,latitude,longitude,isActive,version,companyId,createdAt,updatedAt);

@override
String toString() {
  return 'ZoneData(id: $id, name: $name, description: $description, latitude: $latitude, longitude: $longitude, isActive: $isActive, version: $version, companyId: $companyId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ZoneDataCopyWith<$Res> implements $ZoneDataCopyWith<$Res> {
  factory _$ZoneDataCopyWith(_ZoneData value, $Res Function(_ZoneData) _then) = __$ZoneDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int id,@JsonKey(name: "name") String name,@JsonKey(name: "description") String? description,@JsonKey(name: "latitude", fromJson: _doubleFromString) double latitude,@JsonKey(name: "longitude", fromJson: _doubleFromString) double longitude,@JsonKey(name: "isActive") bool isActive,@JsonKey(name: "version") int version,@JsonKey(name: "companyId") int companyId,@JsonKey(name: "createdAt") DateTime createdAt,@JsonKey(name: "updatedAt") DateTime updatedAt
});




}
/// @nodoc
class __$ZoneDataCopyWithImpl<$Res>
    implements _$ZoneDataCopyWith<$Res> {
  __$ZoneDataCopyWithImpl(this._self, this._then);

  final _ZoneData _self;
  final $Res Function(_ZoneData) _then;

/// Create a copy of ZoneData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? latitude = null,Object? longitude = null,Object? isActive = null,Object? version = null,Object? companyId = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_ZoneData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
