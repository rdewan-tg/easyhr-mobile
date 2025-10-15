// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_attendance_without_image_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddAttendanceWithoutImageRequest {

@JsonKey(name: "address") String get address;@JsonKey(name: "latitude") double get latitude;@JsonKey(name: "longitude") double get longitude;@JsonKey(name: "zone") String get zone;@JsonKey(name: "status") AttendanceStatus get status;@JsonKey(name: "transDay") int get transDay;@JsonKey(name: "transMonth") int get transMonth;@JsonKey(name: "transYear") int get transYear;@JsonKey(name: "date") String get date;
/// Create a copy of AddAttendanceWithoutImageRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddAttendanceWithoutImageRequestCopyWith<AddAttendanceWithoutImageRequest> get copyWith => _$AddAttendanceWithoutImageRequestCopyWithImpl<AddAttendanceWithoutImageRequest>(this as AddAttendanceWithoutImageRequest, _$identity);

  /// Serializes this AddAttendanceWithoutImageRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddAttendanceWithoutImageRequest&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.zone, zone) || other.zone == zone)&&(identical(other.status, status) || other.status == status)&&(identical(other.transDay, transDay) || other.transDay == transDay)&&(identical(other.transMonth, transMonth) || other.transMonth == transMonth)&&(identical(other.transYear, transYear) || other.transYear == transYear)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,latitude,longitude,zone,status,transDay,transMonth,transYear,date);

@override
String toString() {
  return 'AddAttendanceWithoutImageRequest(address: $address, latitude: $latitude, longitude: $longitude, zone: $zone, status: $status, transDay: $transDay, transMonth: $transMonth, transYear: $transYear, date: $date)';
}


}

/// @nodoc
abstract mixin class $AddAttendanceWithoutImageRequestCopyWith<$Res>  {
  factory $AddAttendanceWithoutImageRequestCopyWith(AddAttendanceWithoutImageRequest value, $Res Function(AddAttendanceWithoutImageRequest) _then) = _$AddAttendanceWithoutImageRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "address") String address,@JsonKey(name: "latitude") double latitude,@JsonKey(name: "longitude") double longitude,@JsonKey(name: "zone") String zone,@JsonKey(name: "status") AttendanceStatus status,@JsonKey(name: "transDay") int transDay,@JsonKey(name: "transMonth") int transMonth,@JsonKey(name: "transYear") int transYear,@JsonKey(name: "date") String date
});




}
/// @nodoc
class _$AddAttendanceWithoutImageRequestCopyWithImpl<$Res>
    implements $AddAttendanceWithoutImageRequestCopyWith<$Res> {
  _$AddAttendanceWithoutImageRequestCopyWithImpl(this._self, this._then);

  final AddAttendanceWithoutImageRequest _self;
  final $Res Function(AddAttendanceWithoutImageRequest) _then;

/// Create a copy of AddAttendanceWithoutImageRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = null,Object? latitude = null,Object? longitude = null,Object? zone = null,Object? status = null,Object? transDay = null,Object? transMonth = null,Object? transYear = null,Object? date = null,}) {
  return _then(_self.copyWith(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,zone: null == zone ? _self.zone : zone // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AttendanceStatus,transDay: null == transDay ? _self.transDay : transDay // ignore: cast_nullable_to_non_nullable
as int,transMonth: null == transMonth ? _self.transMonth : transMonth // ignore: cast_nullable_to_non_nullable
as int,transYear: null == transYear ? _self.transYear : transYear // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AddAttendanceWithoutImageRequest].
extension AddAttendanceWithoutImageRequestPatterns on AddAttendanceWithoutImageRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddAttendanceWithoutImageRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddAttendanceWithoutImageRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddAttendanceWithoutImageRequest value)  $default,){
final _that = this;
switch (_that) {
case _AddAttendanceWithoutImageRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddAttendanceWithoutImageRequest value)?  $default,){
final _that = this;
switch (_that) {
case _AddAttendanceWithoutImageRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "address")  String address, @JsonKey(name: "latitude")  double latitude, @JsonKey(name: "longitude")  double longitude, @JsonKey(name: "zone")  String zone, @JsonKey(name: "status")  AttendanceStatus status, @JsonKey(name: "transDay")  int transDay, @JsonKey(name: "transMonth")  int transMonth, @JsonKey(name: "transYear")  int transYear, @JsonKey(name: "date")  String date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddAttendanceWithoutImageRequest() when $default != null:
return $default(_that.address,_that.latitude,_that.longitude,_that.zone,_that.status,_that.transDay,_that.transMonth,_that.transYear,_that.date);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "address")  String address, @JsonKey(name: "latitude")  double latitude, @JsonKey(name: "longitude")  double longitude, @JsonKey(name: "zone")  String zone, @JsonKey(name: "status")  AttendanceStatus status, @JsonKey(name: "transDay")  int transDay, @JsonKey(name: "transMonth")  int transMonth, @JsonKey(name: "transYear")  int transYear, @JsonKey(name: "date")  String date)  $default,) {final _that = this;
switch (_that) {
case _AddAttendanceWithoutImageRequest():
return $default(_that.address,_that.latitude,_that.longitude,_that.zone,_that.status,_that.transDay,_that.transMonth,_that.transYear,_that.date);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "address")  String address, @JsonKey(name: "latitude")  double latitude, @JsonKey(name: "longitude")  double longitude, @JsonKey(name: "zone")  String zone, @JsonKey(name: "status")  AttendanceStatus status, @JsonKey(name: "transDay")  int transDay, @JsonKey(name: "transMonth")  int transMonth, @JsonKey(name: "transYear")  int transYear, @JsonKey(name: "date")  String date)?  $default,) {final _that = this;
switch (_that) {
case _AddAttendanceWithoutImageRequest() when $default != null:
return $default(_that.address,_that.latitude,_that.longitude,_that.zone,_that.status,_that.transDay,_that.transMonth,_that.transYear,_that.date);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddAttendanceWithoutImageRequest implements AddAttendanceWithoutImageRequest {
  const _AddAttendanceWithoutImageRequest({@JsonKey(name: "address") required this.address, @JsonKey(name: "latitude") required this.latitude, @JsonKey(name: "longitude") required this.longitude, @JsonKey(name: "zone") required this.zone, @JsonKey(name: "status") required this.status, @JsonKey(name: "transDay") required this.transDay, @JsonKey(name: "transMonth") required this.transMonth, @JsonKey(name: "transYear") required this.transYear, @JsonKey(name: "date") required this.date});
  factory _AddAttendanceWithoutImageRequest.fromJson(Map<String, dynamic> json) => _$AddAttendanceWithoutImageRequestFromJson(json);

@override@JsonKey(name: "address") final  String address;
@override@JsonKey(name: "latitude") final  double latitude;
@override@JsonKey(name: "longitude") final  double longitude;
@override@JsonKey(name: "zone") final  String zone;
@override@JsonKey(name: "status") final  AttendanceStatus status;
@override@JsonKey(name: "transDay") final  int transDay;
@override@JsonKey(name: "transMonth") final  int transMonth;
@override@JsonKey(name: "transYear") final  int transYear;
@override@JsonKey(name: "date") final  String date;

/// Create a copy of AddAttendanceWithoutImageRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddAttendanceWithoutImageRequestCopyWith<_AddAttendanceWithoutImageRequest> get copyWith => __$AddAttendanceWithoutImageRequestCopyWithImpl<_AddAttendanceWithoutImageRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddAttendanceWithoutImageRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddAttendanceWithoutImageRequest&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.zone, zone) || other.zone == zone)&&(identical(other.status, status) || other.status == status)&&(identical(other.transDay, transDay) || other.transDay == transDay)&&(identical(other.transMonth, transMonth) || other.transMonth == transMonth)&&(identical(other.transYear, transYear) || other.transYear == transYear)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,latitude,longitude,zone,status,transDay,transMonth,transYear,date);

@override
String toString() {
  return 'AddAttendanceWithoutImageRequest(address: $address, latitude: $latitude, longitude: $longitude, zone: $zone, status: $status, transDay: $transDay, transMonth: $transMonth, transYear: $transYear, date: $date)';
}


}

/// @nodoc
abstract mixin class _$AddAttendanceWithoutImageRequestCopyWith<$Res> implements $AddAttendanceWithoutImageRequestCopyWith<$Res> {
  factory _$AddAttendanceWithoutImageRequestCopyWith(_AddAttendanceWithoutImageRequest value, $Res Function(_AddAttendanceWithoutImageRequest) _then) = __$AddAttendanceWithoutImageRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "address") String address,@JsonKey(name: "latitude") double latitude,@JsonKey(name: "longitude") double longitude,@JsonKey(name: "zone") String zone,@JsonKey(name: "status") AttendanceStatus status,@JsonKey(name: "transDay") int transDay,@JsonKey(name: "transMonth") int transMonth,@JsonKey(name: "transYear") int transYear,@JsonKey(name: "date") String date
});




}
/// @nodoc
class __$AddAttendanceWithoutImageRequestCopyWithImpl<$Res>
    implements _$AddAttendanceWithoutImageRequestCopyWith<$Res> {
  __$AddAttendanceWithoutImageRequestCopyWithImpl(this._self, this._then);

  final _AddAttendanceWithoutImageRequest _self;
  final $Res Function(_AddAttendanceWithoutImageRequest) _then;

/// Create a copy of AddAttendanceWithoutImageRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,Object? latitude = null,Object? longitude = null,Object? zone = null,Object? status = null,Object? transDay = null,Object? transMonth = null,Object? transYear = null,Object? date = null,}) {
  return _then(_AddAttendanceWithoutImageRequest(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,zone: null == zone ? _self.zone : zone // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AttendanceStatus,transDay: null == transDay ? _self.transDay : transDay // ignore: cast_nullable_to_non_nullable
as int,transMonth: null == transMonth ? _self.transMonth : transMonth // ignore: cast_nullable_to_non_nullable
as int,transYear: null == transYear ? _self.transYear : transYear // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
