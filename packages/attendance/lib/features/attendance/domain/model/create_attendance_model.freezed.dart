// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_attendance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateAttendanceModel {

 File? get file; String get address; double get latitude; double get longitude; String get zone; AttendanceStatus get status; int get transDay; int get transMonth; int get transYear; String get date;
/// Create a copy of CreateAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAttendanceModelCopyWith<CreateAttendanceModel> get copyWith => _$CreateAttendanceModelCopyWithImpl<CreateAttendanceModel>(this as CreateAttendanceModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAttendanceModel&&(identical(other.file, file) || other.file == file)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.zone, zone) || other.zone == zone)&&(identical(other.status, status) || other.status == status)&&(identical(other.transDay, transDay) || other.transDay == transDay)&&(identical(other.transMonth, transMonth) || other.transMonth == transMonth)&&(identical(other.transYear, transYear) || other.transYear == transYear)&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,file,address,latitude,longitude,zone,status,transDay,transMonth,transYear,date);

@override
String toString() {
  return 'CreateAttendanceModel(file: $file, address: $address, latitude: $latitude, longitude: $longitude, zone: $zone, status: $status, transDay: $transDay, transMonth: $transMonth, transYear: $transYear, date: $date)';
}


}

/// @nodoc
abstract mixin class $CreateAttendanceModelCopyWith<$Res>  {
  factory $CreateAttendanceModelCopyWith(CreateAttendanceModel value, $Res Function(CreateAttendanceModel) _then) = _$CreateAttendanceModelCopyWithImpl;
@useResult
$Res call({
 File? file, String address, double latitude, double longitude, String zone, AttendanceStatus status, int transDay, int transMonth, int transYear, String date
});




}
/// @nodoc
class _$CreateAttendanceModelCopyWithImpl<$Res>
    implements $CreateAttendanceModelCopyWith<$Res> {
  _$CreateAttendanceModelCopyWithImpl(this._self, this._then);

  final CreateAttendanceModel _self;
  final $Res Function(CreateAttendanceModel) _then;

/// Create a copy of CreateAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? file = freezed,Object? address = null,Object? latitude = null,Object? longitude = null,Object? zone = null,Object? status = null,Object? transDay = null,Object? transMonth = null,Object? transYear = null,Object? date = null,}) {
  return _then(_self.copyWith(
file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as File?,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [CreateAttendanceModel].
extension CreateAttendanceModelPatterns on CreateAttendanceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateAttendanceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateAttendanceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateAttendanceModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateAttendanceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateAttendanceModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateAttendanceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( File? file,  String address,  double latitude,  double longitude,  String zone,  AttendanceStatus status,  int transDay,  int transMonth,  int transYear,  String date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateAttendanceModel() when $default != null:
return $default(_that.file,_that.address,_that.latitude,_that.longitude,_that.zone,_that.status,_that.transDay,_that.transMonth,_that.transYear,_that.date);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( File? file,  String address,  double latitude,  double longitude,  String zone,  AttendanceStatus status,  int transDay,  int transMonth,  int transYear,  String date)  $default,) {final _that = this;
switch (_that) {
case _CreateAttendanceModel():
return $default(_that.file,_that.address,_that.latitude,_that.longitude,_that.zone,_that.status,_that.transDay,_that.transMonth,_that.transYear,_that.date);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( File? file,  String address,  double latitude,  double longitude,  String zone,  AttendanceStatus status,  int transDay,  int transMonth,  int transYear,  String date)?  $default,) {final _that = this;
switch (_that) {
case _CreateAttendanceModel() when $default != null:
return $default(_that.file,_that.address,_that.latitude,_that.longitude,_that.zone,_that.status,_that.transDay,_that.transMonth,_that.transYear,_that.date);case _:
  return null;

}
}

}

/// @nodoc


class _CreateAttendanceModel implements CreateAttendanceModel {
  const _CreateAttendanceModel({required this.file, required this.address, required this.latitude, required this.longitude, required this.zone, required this.status, required this.transDay, required this.transMonth, required this.transYear, required this.date});
  

@override final  File? file;
@override final  String address;
@override final  double latitude;
@override final  double longitude;
@override final  String zone;
@override final  AttendanceStatus status;
@override final  int transDay;
@override final  int transMonth;
@override final  int transYear;
@override final  String date;

/// Create a copy of CreateAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAttendanceModelCopyWith<_CreateAttendanceModel> get copyWith => __$CreateAttendanceModelCopyWithImpl<_CreateAttendanceModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAttendanceModel&&(identical(other.file, file) || other.file == file)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.zone, zone) || other.zone == zone)&&(identical(other.status, status) || other.status == status)&&(identical(other.transDay, transDay) || other.transDay == transDay)&&(identical(other.transMonth, transMonth) || other.transMonth == transMonth)&&(identical(other.transYear, transYear) || other.transYear == transYear)&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,file,address,latitude,longitude,zone,status,transDay,transMonth,transYear,date);

@override
String toString() {
  return 'CreateAttendanceModel(file: $file, address: $address, latitude: $latitude, longitude: $longitude, zone: $zone, status: $status, transDay: $transDay, transMonth: $transMonth, transYear: $transYear, date: $date)';
}


}

/// @nodoc
abstract mixin class _$CreateAttendanceModelCopyWith<$Res> implements $CreateAttendanceModelCopyWith<$Res> {
  factory _$CreateAttendanceModelCopyWith(_CreateAttendanceModel value, $Res Function(_CreateAttendanceModel) _then) = __$CreateAttendanceModelCopyWithImpl;
@override @useResult
$Res call({
 File? file, String address, double latitude, double longitude, String zone, AttendanceStatus status, int transDay, int transMonth, int transYear, String date
});




}
/// @nodoc
class __$CreateAttendanceModelCopyWithImpl<$Res>
    implements _$CreateAttendanceModelCopyWith<$Res> {
  __$CreateAttendanceModelCopyWithImpl(this._self, this._then);

  final _CreateAttendanceModel _self;
  final $Res Function(_CreateAttendanceModel) _then;

/// Create a copy of CreateAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? file = freezed,Object? address = null,Object? latitude = null,Object? longitude = null,Object? zone = null,Object? status = null,Object? transDay = null,Object? transMonth = null,Object? transYear = null,Object? date = null,}) {
  return _then(_CreateAttendanceModel(
file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as File?,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
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
