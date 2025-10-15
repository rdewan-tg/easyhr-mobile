// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_attendance_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddAttendanceResponse {

@JsonKey(name: 'status') String get status;@JsonKey(name: 'data') AddAttendanceData get data;
/// Create a copy of AddAttendanceResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddAttendanceResponseCopyWith<AddAttendanceResponse> get copyWith => _$AddAttendanceResponseCopyWithImpl<AddAttendanceResponse>(this as AddAttendanceResponse, _$identity);

  /// Serializes this AddAttendanceResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddAttendanceResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'AddAttendanceResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $AddAttendanceResponseCopyWith<$Res>  {
  factory $AddAttendanceResponseCopyWith(AddAttendanceResponse value, $Res Function(AddAttendanceResponse) _then) = _$AddAttendanceResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status') String status,@JsonKey(name: 'data') AddAttendanceData data
});


$AddAttendanceDataCopyWith<$Res> get data;

}
/// @nodoc
class _$AddAttendanceResponseCopyWithImpl<$Res>
    implements $AddAttendanceResponseCopyWith<$Res> {
  _$AddAttendanceResponseCopyWithImpl(this._self, this._then);

  final AddAttendanceResponse _self;
  final $Res Function(AddAttendanceResponse) _then;

/// Create a copy of AddAttendanceResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AddAttendanceData,
  ));
}
/// Create a copy of AddAttendanceResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddAttendanceDataCopyWith<$Res> get data {
  
  return $AddAttendanceDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AddAttendanceResponse].
extension AddAttendanceResponsePatterns on AddAttendanceResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddAttendanceResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddAttendanceResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddAttendanceResponse value)  $default,){
final _that = this;
switch (_that) {
case _AddAttendanceResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddAttendanceResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AddAttendanceResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String status, @JsonKey(name: 'data')  AddAttendanceData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddAttendanceResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String status, @JsonKey(name: 'data')  AddAttendanceData data)  $default,) {final _that = this;
switch (_that) {
case _AddAttendanceResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'status')  String status, @JsonKey(name: 'data')  AddAttendanceData data)?  $default,) {final _that = this;
switch (_that) {
case _AddAttendanceResponse() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddAttendanceResponse implements AddAttendanceResponse {
  const _AddAttendanceResponse({@JsonKey(name: 'status') required this.status, @JsonKey(name: 'data') required this.data});
  factory _AddAttendanceResponse.fromJson(Map<String, dynamic> json) => _$AddAttendanceResponseFromJson(json);

@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'data') final  AddAttendanceData data;

/// Create a copy of AddAttendanceResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddAttendanceResponseCopyWith<_AddAttendanceResponse> get copyWith => __$AddAttendanceResponseCopyWithImpl<_AddAttendanceResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddAttendanceResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddAttendanceResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data);

@override
String toString() {
  return 'AddAttendanceResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AddAttendanceResponseCopyWith<$Res> implements $AddAttendanceResponseCopyWith<$Res> {
  factory _$AddAttendanceResponseCopyWith(_AddAttendanceResponse value, $Res Function(_AddAttendanceResponse) _then) = __$AddAttendanceResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status') String status,@JsonKey(name: 'data') AddAttendanceData data
});


@override $AddAttendanceDataCopyWith<$Res> get data;

}
/// @nodoc
class __$AddAttendanceResponseCopyWithImpl<$Res>
    implements _$AddAttendanceResponseCopyWith<$Res> {
  __$AddAttendanceResponseCopyWithImpl(this._self, this._then);

  final _AddAttendanceResponse _self;
  final $Res Function(_AddAttendanceResponse) _then;

/// Create a copy of AddAttendanceResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,}) {
  return _then(_AddAttendanceResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AddAttendanceData,
  ));
}

/// Create a copy of AddAttendanceResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddAttendanceDataCopyWith<$Res> get data {
  
  return $AddAttendanceDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$AddAttendanceData {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'userId') int get userId;@JsonKey(name: 'address') String get address;@JsonKey(name: 'latitude') String get latitude;@JsonKey(name: 'longitude') String get longitude;@JsonKey(name: 'zone') String get zone;@JsonKey(name: 'image') String? get image;@JsonKey(name: 'status') AttendanceStatus get status;@JsonKey(name: 'transDay') int get transDay;@JsonKey(name: 'transMonth') int get transMonth;@JsonKey(name: 'transYear') int get transYear;@JsonKey(name: 'date') String get date;@JsonKey(name: 'companyId') int get companyId;@JsonKey(name: 'createdAt') String get createdAt;@JsonKey(name: 'updatedAt') String get updatedAt;
/// Create a copy of AddAttendanceData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddAttendanceDataCopyWith<AddAttendanceData> get copyWith => _$AddAttendanceDataCopyWithImpl<AddAttendanceData>(this as AddAttendanceData, _$identity);

  /// Serializes this AddAttendanceData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddAttendanceData&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.zone, zone) || other.zone == zone)&&(identical(other.image, image) || other.image == image)&&(identical(other.status, status) || other.status == status)&&(identical(other.transDay, transDay) || other.transDay == transDay)&&(identical(other.transMonth, transMonth) || other.transMonth == transMonth)&&(identical(other.transYear, transYear) || other.transYear == transYear)&&(identical(other.date, date) || other.date == date)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,address,latitude,longitude,zone,image,status,transDay,transMonth,transYear,date,companyId,createdAt,updatedAt);

@override
String toString() {
  return 'AddAttendanceData(id: $id, userId: $userId, address: $address, latitude: $latitude, longitude: $longitude, zone: $zone, image: $image, status: $status, transDay: $transDay, transMonth: $transMonth, transYear: $transYear, date: $date, companyId: $companyId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $AddAttendanceDataCopyWith<$Res>  {
  factory $AddAttendanceDataCopyWith(AddAttendanceData value, $Res Function(AddAttendanceData) _then) = _$AddAttendanceDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'userId') int userId,@JsonKey(name: 'address') String address,@JsonKey(name: 'latitude') String latitude,@JsonKey(name: 'longitude') String longitude,@JsonKey(name: 'zone') String zone,@JsonKey(name: 'image') String? image,@JsonKey(name: 'status') AttendanceStatus status,@JsonKey(name: 'transDay') int transDay,@JsonKey(name: 'transMonth') int transMonth,@JsonKey(name: 'transYear') int transYear,@JsonKey(name: 'date') String date,@JsonKey(name: 'companyId') int companyId,@JsonKey(name: 'createdAt') String createdAt,@JsonKey(name: 'updatedAt') String updatedAt
});




}
/// @nodoc
class _$AddAttendanceDataCopyWithImpl<$Res>
    implements $AddAttendanceDataCopyWith<$Res> {
  _$AddAttendanceDataCopyWithImpl(this._self, this._then);

  final AddAttendanceData _self;
  final $Res Function(AddAttendanceData) _then;

/// Create a copy of AddAttendanceData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? address = null,Object? latitude = null,Object? longitude = null,Object? zone = null,Object? image = freezed,Object? status = null,Object? transDay = null,Object? transMonth = null,Object? transYear = null,Object? date = null,Object? companyId = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,zone: null == zone ? _self.zone : zone // ignore: cast_nullable_to_non_nullable
as String,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AttendanceStatus,transDay: null == transDay ? _self.transDay : transDay // ignore: cast_nullable_to_non_nullable
as int,transMonth: null == transMonth ? _self.transMonth : transMonth // ignore: cast_nullable_to_non_nullable
as int,transYear: null == transYear ? _self.transYear : transYear // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AddAttendanceData].
extension AddAttendanceDataPatterns on AddAttendanceData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddAttendanceData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddAttendanceData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddAttendanceData value)  $default,){
final _that = this;
switch (_that) {
case _AddAttendanceData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddAttendanceData value)?  $default,){
final _that = this;
switch (_that) {
case _AddAttendanceData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'userId')  int userId, @JsonKey(name: 'address')  String address, @JsonKey(name: 'latitude')  String latitude, @JsonKey(name: 'longitude')  String longitude, @JsonKey(name: 'zone')  String zone, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'status')  AttendanceStatus status, @JsonKey(name: 'transDay')  int transDay, @JsonKey(name: 'transMonth')  int transMonth, @JsonKey(name: 'transYear')  int transYear, @JsonKey(name: 'date')  String date, @JsonKey(name: 'companyId')  int companyId, @JsonKey(name: 'createdAt')  String createdAt, @JsonKey(name: 'updatedAt')  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddAttendanceData() when $default != null:
return $default(_that.id,_that.userId,_that.address,_that.latitude,_that.longitude,_that.zone,_that.image,_that.status,_that.transDay,_that.transMonth,_that.transYear,_that.date,_that.companyId,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'userId')  int userId, @JsonKey(name: 'address')  String address, @JsonKey(name: 'latitude')  String latitude, @JsonKey(name: 'longitude')  String longitude, @JsonKey(name: 'zone')  String zone, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'status')  AttendanceStatus status, @JsonKey(name: 'transDay')  int transDay, @JsonKey(name: 'transMonth')  int transMonth, @JsonKey(name: 'transYear')  int transYear, @JsonKey(name: 'date')  String date, @JsonKey(name: 'companyId')  int companyId, @JsonKey(name: 'createdAt')  String createdAt, @JsonKey(name: 'updatedAt')  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _AddAttendanceData():
return $default(_that.id,_that.userId,_that.address,_that.latitude,_that.longitude,_that.zone,_that.image,_that.status,_that.transDay,_that.transMonth,_that.transYear,_that.date,_that.companyId,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'userId')  int userId, @JsonKey(name: 'address')  String address, @JsonKey(name: 'latitude')  String latitude, @JsonKey(name: 'longitude')  String longitude, @JsonKey(name: 'zone')  String zone, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'status')  AttendanceStatus status, @JsonKey(name: 'transDay')  int transDay, @JsonKey(name: 'transMonth')  int transMonth, @JsonKey(name: 'transYear')  int transYear, @JsonKey(name: 'date')  String date, @JsonKey(name: 'companyId')  int companyId, @JsonKey(name: 'createdAt')  String createdAt, @JsonKey(name: 'updatedAt')  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _AddAttendanceData() when $default != null:
return $default(_that.id,_that.userId,_that.address,_that.latitude,_that.longitude,_that.zone,_that.image,_that.status,_that.transDay,_that.transMonth,_that.transYear,_that.date,_that.companyId,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddAttendanceData implements AddAttendanceData {
  const _AddAttendanceData({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'userId') required this.userId, @JsonKey(name: 'address') required this.address, @JsonKey(name: 'latitude') required this.latitude, @JsonKey(name: 'longitude') required this.longitude, @JsonKey(name: 'zone') required this.zone, @JsonKey(name: 'image') this.image, @JsonKey(name: 'status') required this.status, @JsonKey(name: 'transDay') required this.transDay, @JsonKey(name: 'transMonth') required this.transMonth, @JsonKey(name: 'transYear') required this.transYear, @JsonKey(name: 'date') required this.date, @JsonKey(name: 'companyId') required this.companyId, @JsonKey(name: 'createdAt') required this.createdAt, @JsonKey(name: 'updatedAt') required this.updatedAt});
  factory _AddAttendanceData.fromJson(Map<String, dynamic> json) => _$AddAttendanceDataFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'userId') final  int userId;
@override@JsonKey(name: 'address') final  String address;
@override@JsonKey(name: 'latitude') final  String latitude;
@override@JsonKey(name: 'longitude') final  String longitude;
@override@JsonKey(name: 'zone') final  String zone;
@override@JsonKey(name: 'image') final  String? image;
@override@JsonKey(name: 'status') final  AttendanceStatus status;
@override@JsonKey(name: 'transDay') final  int transDay;
@override@JsonKey(name: 'transMonth') final  int transMonth;
@override@JsonKey(name: 'transYear') final  int transYear;
@override@JsonKey(name: 'date') final  String date;
@override@JsonKey(name: 'companyId') final  int companyId;
@override@JsonKey(name: 'createdAt') final  String createdAt;
@override@JsonKey(name: 'updatedAt') final  String updatedAt;

/// Create a copy of AddAttendanceData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddAttendanceDataCopyWith<_AddAttendanceData> get copyWith => __$AddAttendanceDataCopyWithImpl<_AddAttendanceData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddAttendanceDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddAttendanceData&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.zone, zone) || other.zone == zone)&&(identical(other.image, image) || other.image == image)&&(identical(other.status, status) || other.status == status)&&(identical(other.transDay, transDay) || other.transDay == transDay)&&(identical(other.transMonth, transMonth) || other.transMonth == transMonth)&&(identical(other.transYear, transYear) || other.transYear == transYear)&&(identical(other.date, date) || other.date == date)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,address,latitude,longitude,zone,image,status,transDay,transMonth,transYear,date,companyId,createdAt,updatedAt);

@override
String toString() {
  return 'AddAttendanceData(id: $id, userId: $userId, address: $address, latitude: $latitude, longitude: $longitude, zone: $zone, image: $image, status: $status, transDay: $transDay, transMonth: $transMonth, transYear: $transYear, date: $date, companyId: $companyId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$AddAttendanceDataCopyWith<$Res> implements $AddAttendanceDataCopyWith<$Res> {
  factory _$AddAttendanceDataCopyWith(_AddAttendanceData value, $Res Function(_AddAttendanceData) _then) = __$AddAttendanceDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'userId') int userId,@JsonKey(name: 'address') String address,@JsonKey(name: 'latitude') String latitude,@JsonKey(name: 'longitude') String longitude,@JsonKey(name: 'zone') String zone,@JsonKey(name: 'image') String? image,@JsonKey(name: 'status') AttendanceStatus status,@JsonKey(name: 'transDay') int transDay,@JsonKey(name: 'transMonth') int transMonth,@JsonKey(name: 'transYear') int transYear,@JsonKey(name: 'date') String date,@JsonKey(name: 'companyId') int companyId,@JsonKey(name: 'createdAt') String createdAt,@JsonKey(name: 'updatedAt') String updatedAt
});




}
/// @nodoc
class __$AddAttendanceDataCopyWithImpl<$Res>
    implements _$AddAttendanceDataCopyWith<$Res> {
  __$AddAttendanceDataCopyWithImpl(this._self, this._then);

  final _AddAttendanceData _self;
  final $Res Function(_AddAttendanceData) _then;

/// Create a copy of AddAttendanceData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? address = null,Object? latitude = null,Object? longitude = null,Object? zone = null,Object? image = freezed,Object? status = null,Object? transDay = null,Object? transMonth = null,Object? transYear = null,Object? date = null,Object? companyId = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_AddAttendanceData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,zone: null == zone ? _self.zone : zone // ignore: cast_nullable_to_non_nullable
as String,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AttendanceStatus,transDay: null == transDay ? _self.transDay : transDay // ignore: cast_nullable_to_non_nullable
as int,transMonth: null == transMonth ? _self.transMonth : transMonth // ignore: cast_nullable_to_non_nullable
as int,transYear: null == transYear ? _self.transYear : transYear // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
