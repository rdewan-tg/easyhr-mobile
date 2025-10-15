// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AttendanceResponse {

@JsonKey(name: 'status') String get status;@JsonKey(name: 'data') List<AttendanceData> get data;@JsonKey(name: 'page') AttendancePagination get page;
/// Create a copy of AttendanceResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceResponseCopyWith<AttendanceResponse> get copyWith => _$AttendanceResponseCopyWithImpl<AttendanceResponse>(this as AttendanceResponse, _$identity);

  /// Serializes this AttendanceResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceResponse&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(data),page);

@override
String toString() {
  return 'AttendanceResponse(status: $status, data: $data, page: $page)';
}


}

/// @nodoc
abstract mixin class $AttendanceResponseCopyWith<$Res>  {
  factory $AttendanceResponseCopyWith(AttendanceResponse value, $Res Function(AttendanceResponse) _then) = _$AttendanceResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status') String status,@JsonKey(name: 'data') List<AttendanceData> data,@JsonKey(name: 'page') AttendancePagination page
});


$AttendancePaginationCopyWith<$Res> get page;

}
/// @nodoc
class _$AttendanceResponseCopyWithImpl<$Res>
    implements $AttendanceResponseCopyWith<$Res> {
  _$AttendanceResponseCopyWithImpl(this._self, this._then);

  final AttendanceResponse _self;
  final $Res Function(AttendanceResponse) _then;

/// Create a copy of AttendanceResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,Object? page = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AttendanceData>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as AttendancePagination,
  ));
}
/// Create a copy of AttendanceResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendancePaginationCopyWith<$Res> get page {
  
  return $AttendancePaginationCopyWith<$Res>(_self.page, (value) {
    return _then(_self.copyWith(page: value));
  });
}
}


/// Adds pattern-matching-related methods to [AttendanceResponse].
extension AttendanceResponsePatterns on AttendanceResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceResponse value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String status, @JsonKey(name: 'data')  List<AttendanceData> data, @JsonKey(name: 'page')  AttendancePagination page)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceResponse() when $default != null:
return $default(_that.status,_that.data,_that.page);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String status, @JsonKey(name: 'data')  List<AttendanceData> data, @JsonKey(name: 'page')  AttendancePagination page)  $default,) {final _that = this;
switch (_that) {
case _AttendanceResponse():
return $default(_that.status,_that.data,_that.page);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'status')  String status, @JsonKey(name: 'data')  List<AttendanceData> data, @JsonKey(name: 'page')  AttendancePagination page)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceResponse() when $default != null:
return $default(_that.status,_that.data,_that.page);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceResponse implements AttendanceResponse {
  const _AttendanceResponse({@JsonKey(name: 'status') required this.status, @JsonKey(name: 'data') final  List<AttendanceData> data = const [], @JsonKey(name: 'page') required this.page}): _data = data;
  factory _AttendanceResponse.fromJson(Map<String, dynamic> json) => _$AttendanceResponseFromJson(json);

@override@JsonKey(name: 'status') final  String status;
 final  List<AttendanceData> _data;
@override@JsonKey(name: 'data') List<AttendanceData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey(name: 'page') final  AttendancePagination page;

/// Create a copy of AttendanceResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceResponseCopyWith<_AttendanceResponse> get copyWith => __$AttendanceResponseCopyWithImpl<_AttendanceResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceResponse&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_data),page);

@override
String toString() {
  return 'AttendanceResponse(status: $status, data: $data, page: $page)';
}


}

/// @nodoc
abstract mixin class _$AttendanceResponseCopyWith<$Res> implements $AttendanceResponseCopyWith<$Res> {
  factory _$AttendanceResponseCopyWith(_AttendanceResponse value, $Res Function(_AttendanceResponse) _then) = __$AttendanceResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status') String status,@JsonKey(name: 'data') List<AttendanceData> data,@JsonKey(name: 'page') AttendancePagination page
});


@override $AttendancePaginationCopyWith<$Res> get page;

}
/// @nodoc
class __$AttendanceResponseCopyWithImpl<$Res>
    implements _$AttendanceResponseCopyWith<$Res> {
  __$AttendanceResponseCopyWithImpl(this._self, this._then);

  final _AttendanceResponse _self;
  final $Res Function(_AttendanceResponse) _then;

/// Create a copy of AttendanceResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,Object? page = null,}) {
  return _then(_AttendanceResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AttendanceData>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as AttendancePagination,
  ));
}

/// Create a copy of AttendanceResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendancePaginationCopyWith<$Res> get page {
  
  return $AttendancePaginationCopyWith<$Res>(_self.page, (value) {
    return _then(_self.copyWith(page: value));
  });
}
}


/// @nodoc
mixin _$AttendanceData {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'userId') int get userId;@JsonKey(name: 'address') String get address;@JsonKey(name: 'latitude') String get latitude;@JsonKey(name: 'longitude') String get longitude;@JsonKey(name: 'zone') String get zone;@JsonKey(name: 'image') String? get image;@JsonKey(name: 'status') AttendanceStatus get status;@JsonKey(name: 'transDay') int get transDay;@JsonKey(name: 'transMonth') int get transMonth;@JsonKey(name: 'transYear') int get transYear;@JsonKey(name: 'date') String get date;@JsonKey(name: 'companyId') int get companyId;@JsonKey(name: 'createdAt') String get createdAt;@JsonKey(name: 'updatedAt') String get updatedAt;
/// Create a copy of AttendanceData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceDataCopyWith<AttendanceData> get copyWith => _$AttendanceDataCopyWithImpl<AttendanceData>(this as AttendanceData, _$identity);

  /// Serializes this AttendanceData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceData&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.zone, zone) || other.zone == zone)&&(identical(other.image, image) || other.image == image)&&(identical(other.status, status) || other.status == status)&&(identical(other.transDay, transDay) || other.transDay == transDay)&&(identical(other.transMonth, transMonth) || other.transMonth == transMonth)&&(identical(other.transYear, transYear) || other.transYear == transYear)&&(identical(other.date, date) || other.date == date)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,address,latitude,longitude,zone,image,status,transDay,transMonth,transYear,date,companyId,createdAt,updatedAt);

@override
String toString() {
  return 'AttendanceData(id: $id, userId: $userId, address: $address, latitude: $latitude, longitude: $longitude, zone: $zone, image: $image, status: $status, transDay: $transDay, transMonth: $transMonth, transYear: $transYear, date: $date, companyId: $companyId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $AttendanceDataCopyWith<$Res>  {
  factory $AttendanceDataCopyWith(AttendanceData value, $Res Function(AttendanceData) _then) = _$AttendanceDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'userId') int userId,@JsonKey(name: 'address') String address,@JsonKey(name: 'latitude') String latitude,@JsonKey(name: 'longitude') String longitude,@JsonKey(name: 'zone') String zone,@JsonKey(name: 'image') String? image,@JsonKey(name: 'status') AttendanceStatus status,@JsonKey(name: 'transDay') int transDay,@JsonKey(name: 'transMonth') int transMonth,@JsonKey(name: 'transYear') int transYear,@JsonKey(name: 'date') String date,@JsonKey(name: 'companyId') int companyId,@JsonKey(name: 'createdAt') String createdAt,@JsonKey(name: 'updatedAt') String updatedAt
});




}
/// @nodoc
class _$AttendanceDataCopyWithImpl<$Res>
    implements $AttendanceDataCopyWith<$Res> {
  _$AttendanceDataCopyWithImpl(this._self, this._then);

  final AttendanceData _self;
  final $Res Function(AttendanceData) _then;

/// Create a copy of AttendanceData
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


/// Adds pattern-matching-related methods to [AttendanceData].
extension AttendanceDataPatterns on AttendanceData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceData value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceData value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceData() when $default != null:
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
case _AttendanceData() when $default != null:
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
case _AttendanceData():
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
case _AttendanceData() when $default != null:
return $default(_that.id,_that.userId,_that.address,_that.latitude,_that.longitude,_that.zone,_that.image,_that.status,_that.transDay,_that.transMonth,_that.transYear,_that.date,_that.companyId,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceData implements AttendanceData {
  const _AttendanceData({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'userId') required this.userId, @JsonKey(name: 'address') required this.address, @JsonKey(name: 'latitude') required this.latitude, @JsonKey(name: 'longitude') required this.longitude, @JsonKey(name: 'zone') required this.zone, @JsonKey(name: 'image') this.image, @JsonKey(name: 'status') required this.status, @JsonKey(name: 'transDay') required this.transDay, @JsonKey(name: 'transMonth') required this.transMonth, @JsonKey(name: 'transYear') required this.transYear, @JsonKey(name: 'date') required this.date, @JsonKey(name: 'companyId') required this.companyId, @JsonKey(name: 'createdAt') required this.createdAt, @JsonKey(name: 'updatedAt') required this.updatedAt});
  factory _AttendanceData.fromJson(Map<String, dynamic> json) => _$AttendanceDataFromJson(json);

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

/// Create a copy of AttendanceData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceDataCopyWith<_AttendanceData> get copyWith => __$AttendanceDataCopyWithImpl<_AttendanceData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceData&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.zone, zone) || other.zone == zone)&&(identical(other.image, image) || other.image == image)&&(identical(other.status, status) || other.status == status)&&(identical(other.transDay, transDay) || other.transDay == transDay)&&(identical(other.transMonth, transMonth) || other.transMonth == transMonth)&&(identical(other.transYear, transYear) || other.transYear == transYear)&&(identical(other.date, date) || other.date == date)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,address,latitude,longitude,zone,image,status,transDay,transMonth,transYear,date,companyId,createdAt,updatedAt);

@override
String toString() {
  return 'AttendanceData(id: $id, userId: $userId, address: $address, latitude: $latitude, longitude: $longitude, zone: $zone, image: $image, status: $status, transDay: $transDay, transMonth: $transMonth, transYear: $transYear, date: $date, companyId: $companyId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$AttendanceDataCopyWith<$Res> implements $AttendanceDataCopyWith<$Res> {
  factory _$AttendanceDataCopyWith(_AttendanceData value, $Res Function(_AttendanceData) _then) = __$AttendanceDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'userId') int userId,@JsonKey(name: 'address') String address,@JsonKey(name: 'latitude') String latitude,@JsonKey(name: 'longitude') String longitude,@JsonKey(name: 'zone') String zone,@JsonKey(name: 'image') String? image,@JsonKey(name: 'status') AttendanceStatus status,@JsonKey(name: 'transDay') int transDay,@JsonKey(name: 'transMonth') int transMonth,@JsonKey(name: 'transYear') int transYear,@JsonKey(name: 'date') String date,@JsonKey(name: 'companyId') int companyId,@JsonKey(name: 'createdAt') String createdAt,@JsonKey(name: 'updatedAt') String updatedAt
});




}
/// @nodoc
class __$AttendanceDataCopyWithImpl<$Res>
    implements _$AttendanceDataCopyWith<$Res> {
  __$AttendanceDataCopyWithImpl(this._self, this._then);

  final _AttendanceData _self;
  final $Res Function(_AttendanceData) _then;

/// Create a copy of AttendanceData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? address = null,Object? latitude = null,Object? longitude = null,Object? zone = null,Object? image = freezed,Object? status = null,Object? transDay = null,Object? transMonth = null,Object? transYear = null,Object? date = null,Object? companyId = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_AttendanceData(
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


/// @nodoc
mixin _$AttendancePagination {

@JsonKey(name: 'currentPage') int get currentPage;@JsonKey(name: 'totalPages') int get totalPages;@JsonKey(name: 'limit') int get limit;@JsonKey(name: 'total') int get total;
/// Create a copy of AttendancePagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendancePaginationCopyWith<AttendancePagination> get copyWith => _$AttendancePaginationCopyWithImpl<AttendancePagination>(this as AttendancePagination, _$identity);

  /// Serializes this AttendancePagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendancePagination&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,totalPages,limit,total);

@override
String toString() {
  return 'AttendancePagination(currentPage: $currentPage, totalPages: $totalPages, limit: $limit, total: $total)';
}


}

/// @nodoc
abstract mixin class $AttendancePaginationCopyWith<$Res>  {
  factory $AttendancePaginationCopyWith(AttendancePagination value, $Res Function(AttendancePagination) _then) = _$AttendancePaginationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'currentPage') int currentPage,@JsonKey(name: 'totalPages') int totalPages,@JsonKey(name: 'limit') int limit,@JsonKey(name: 'total') int total
});




}
/// @nodoc
class _$AttendancePaginationCopyWithImpl<$Res>
    implements $AttendancePaginationCopyWith<$Res> {
  _$AttendancePaginationCopyWithImpl(this._self, this._then);

  final AttendancePagination _self;
  final $Res Function(AttendancePagination) _then;

/// Create a copy of AttendancePagination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = null,Object? totalPages = null,Object? limit = null,Object? total = null,}) {
  return _then(_self.copyWith(
currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendancePagination].
extension AttendancePaginationPatterns on AttendancePagination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendancePagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendancePagination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendancePagination value)  $default,){
final _that = this;
switch (_that) {
case _AttendancePagination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendancePagination value)?  $default,){
final _that = this;
switch (_that) {
case _AttendancePagination() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'currentPage')  int currentPage, @JsonKey(name: 'totalPages')  int totalPages, @JsonKey(name: 'limit')  int limit, @JsonKey(name: 'total')  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendancePagination() when $default != null:
return $default(_that.currentPage,_that.totalPages,_that.limit,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'currentPage')  int currentPage, @JsonKey(name: 'totalPages')  int totalPages, @JsonKey(name: 'limit')  int limit, @JsonKey(name: 'total')  int total)  $default,) {final _that = this;
switch (_that) {
case _AttendancePagination():
return $default(_that.currentPage,_that.totalPages,_that.limit,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'currentPage')  int currentPage, @JsonKey(name: 'totalPages')  int totalPages, @JsonKey(name: 'limit')  int limit, @JsonKey(name: 'total')  int total)?  $default,) {final _that = this;
switch (_that) {
case _AttendancePagination() when $default != null:
return $default(_that.currentPage,_that.totalPages,_that.limit,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendancePagination implements AttendancePagination {
  const _AttendancePagination({@JsonKey(name: 'currentPage') this.currentPage = 1, @JsonKey(name: 'totalPages') this.totalPages = 1, @JsonKey(name: 'limit') this.limit = 0, @JsonKey(name: 'total') this.total = 0});
  factory _AttendancePagination.fromJson(Map<String, dynamic> json) => _$AttendancePaginationFromJson(json);

@override@JsonKey(name: 'currentPage') final  int currentPage;
@override@JsonKey(name: 'totalPages') final  int totalPages;
@override@JsonKey(name: 'limit') final  int limit;
@override@JsonKey(name: 'total') final  int total;

/// Create a copy of AttendancePagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendancePaginationCopyWith<_AttendancePagination> get copyWith => __$AttendancePaginationCopyWithImpl<_AttendancePagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendancePaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendancePagination&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,totalPages,limit,total);

@override
String toString() {
  return 'AttendancePagination(currentPage: $currentPage, totalPages: $totalPages, limit: $limit, total: $total)';
}


}

/// @nodoc
abstract mixin class _$AttendancePaginationCopyWith<$Res> implements $AttendancePaginationCopyWith<$Res> {
  factory _$AttendancePaginationCopyWith(_AttendancePagination value, $Res Function(_AttendancePagination) _then) = __$AttendancePaginationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'currentPage') int currentPage,@JsonKey(name: 'totalPages') int totalPages,@JsonKey(name: 'limit') int limit,@JsonKey(name: 'total') int total
});




}
/// @nodoc
class __$AttendancePaginationCopyWithImpl<$Res>
    implements _$AttendancePaginationCopyWith<$Res> {
  __$AttendancePaginationCopyWithImpl(this._self, this._then);

  final _AttendancePagination _self;
  final $Res Function(_AttendancePagination) _then;

/// Create a copy of AttendancePagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = null,Object? totalPages = null,Object? limit = null,Object? total = null,}) {
  return _then(_AttendancePagination(
currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
