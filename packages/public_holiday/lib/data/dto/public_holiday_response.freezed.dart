// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_holiday_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PublicHolidayResponse {

 String get status; List<PublicHolidayData> get data;
/// Create a copy of PublicHolidayResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PublicHolidayResponseCopyWith<PublicHolidayResponse> get copyWith => _$PublicHolidayResponseCopyWithImpl<PublicHolidayResponse>(this as PublicHolidayResponse, _$identity);

  /// Serializes this PublicHolidayResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PublicHolidayResponse&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'PublicHolidayResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $PublicHolidayResponseCopyWith<$Res>  {
  factory $PublicHolidayResponseCopyWith(PublicHolidayResponse value, $Res Function(PublicHolidayResponse) _then) = _$PublicHolidayResponseCopyWithImpl;
@useResult
$Res call({
 String status, List<PublicHolidayData> data
});




}
/// @nodoc
class _$PublicHolidayResponseCopyWithImpl<$Res>
    implements $PublicHolidayResponseCopyWith<$Res> {
  _$PublicHolidayResponseCopyWithImpl(this._self, this._then);

  final PublicHolidayResponse _self;
  final $Res Function(PublicHolidayResponse) _then;

/// Create a copy of PublicHolidayResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<PublicHolidayData>,
  ));
}

}


/// Adds pattern-matching-related methods to [PublicHolidayResponse].
extension PublicHolidayResponsePatterns on PublicHolidayResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PublicHolidayResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PublicHolidayResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PublicHolidayResponse value)  $default,){
final _that = this;
switch (_that) {
case _PublicHolidayResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PublicHolidayResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PublicHolidayResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  List<PublicHolidayData> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PublicHolidayResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  List<PublicHolidayData> data)  $default,) {final _that = this;
switch (_that) {
case _PublicHolidayResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  List<PublicHolidayData> data)?  $default,) {final _that = this;
switch (_that) {
case _PublicHolidayResponse() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PublicHolidayResponse implements PublicHolidayResponse {
   _PublicHolidayResponse({required this.status, final  List<PublicHolidayData> data = const []}): _data = data;
  factory _PublicHolidayResponse.fromJson(Map<String, dynamic> json) => _$PublicHolidayResponseFromJson(json);

@override final  String status;
 final  List<PublicHolidayData> _data;
@override@JsonKey() List<PublicHolidayData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of PublicHolidayResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PublicHolidayResponseCopyWith<_PublicHolidayResponse> get copyWith => __$PublicHolidayResponseCopyWithImpl<_PublicHolidayResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PublicHolidayResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PublicHolidayResponse&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'PublicHolidayResponse(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$PublicHolidayResponseCopyWith<$Res> implements $PublicHolidayResponseCopyWith<$Res> {
  factory _$PublicHolidayResponseCopyWith(_PublicHolidayResponse value, $Res Function(_PublicHolidayResponse) _then) = __$PublicHolidayResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, List<PublicHolidayData> data
});




}
/// @nodoc
class __$PublicHolidayResponseCopyWithImpl<$Res>
    implements _$PublicHolidayResponseCopyWith<$Res> {
  __$PublicHolidayResponseCopyWithImpl(this._self, this._then);

  final _PublicHolidayResponse _self;
  final $Res Function(_PublicHolidayResponse) _then;

/// Create a copy of PublicHolidayResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,}) {
  return _then(_PublicHolidayResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<PublicHolidayData>,
  ));
}


}


/// @nodoc
mixin _$PublicHolidayData {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'name') String get name;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'date') DateTime get date;@JsonKey(name: 'year') int get year;@JsonKey(name: 'isRecurring') bool get isRecurring;@JsonKey(name: 'companyId') int get companyId;@JsonKey(name: 'states') List<PublicHolidayState> get states;
/// Create a copy of PublicHolidayData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PublicHolidayDataCopyWith<PublicHolidayData> get copyWith => _$PublicHolidayDataCopyWithImpl<PublicHolidayData>(this as PublicHolidayData, _$identity);

  /// Serializes this PublicHolidayData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PublicHolidayData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.date, date) || other.date == date)&&(identical(other.year, year) || other.year == year)&&(identical(other.isRecurring, isRecurring) || other.isRecurring == isRecurring)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&const DeepCollectionEquality().equals(other.states, states));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,date,year,isRecurring,companyId,const DeepCollectionEquality().hash(states));

@override
String toString() {
  return 'PublicHolidayData(id: $id, name: $name, description: $description, date: $date, year: $year, isRecurring: $isRecurring, companyId: $companyId, states: $states)';
}


}

/// @nodoc
abstract mixin class $PublicHolidayDataCopyWith<$Res>  {
  factory $PublicHolidayDataCopyWith(PublicHolidayData value, $Res Function(PublicHolidayData) _then) = _$PublicHolidayDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'name') String name,@JsonKey(name: 'description') String? description,@JsonKey(name: 'date') DateTime date,@JsonKey(name: 'year') int year,@JsonKey(name: 'isRecurring') bool isRecurring,@JsonKey(name: 'companyId') int companyId,@JsonKey(name: 'states') List<PublicHolidayState> states
});




}
/// @nodoc
class _$PublicHolidayDataCopyWithImpl<$Res>
    implements $PublicHolidayDataCopyWith<$Res> {
  _$PublicHolidayDataCopyWithImpl(this._self, this._then);

  final PublicHolidayData _self;
  final $Res Function(PublicHolidayData) _then;

/// Create a copy of PublicHolidayData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? date = null,Object? year = null,Object? isRecurring = null,Object? companyId = null,Object? states = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,isRecurring: null == isRecurring ? _self.isRecurring : isRecurring // ignore: cast_nullable_to_non_nullable
as bool,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,states: null == states ? _self.states : states // ignore: cast_nullable_to_non_nullable
as List<PublicHolidayState>,
  ));
}

}


/// Adds pattern-matching-related methods to [PublicHolidayData].
extension PublicHolidayDataPatterns on PublicHolidayData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PublicHolidayData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PublicHolidayData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PublicHolidayData value)  $default,){
final _that = this;
switch (_that) {
case _PublicHolidayData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PublicHolidayData value)?  $default,){
final _that = this;
switch (_that) {
case _PublicHolidayData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'date')  DateTime date, @JsonKey(name: 'year')  int year, @JsonKey(name: 'isRecurring')  bool isRecurring, @JsonKey(name: 'companyId')  int companyId, @JsonKey(name: 'states')  List<PublicHolidayState> states)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PublicHolidayData() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.date,_that.year,_that.isRecurring,_that.companyId,_that.states);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'date')  DateTime date, @JsonKey(name: 'year')  int year, @JsonKey(name: 'isRecurring')  bool isRecurring, @JsonKey(name: 'companyId')  int companyId, @JsonKey(name: 'states')  List<PublicHolidayState> states)  $default,) {final _that = this;
switch (_that) {
case _PublicHolidayData():
return $default(_that.id,_that.name,_that.description,_that.date,_that.year,_that.isRecurring,_that.companyId,_that.states);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'date')  DateTime date, @JsonKey(name: 'year')  int year, @JsonKey(name: 'isRecurring')  bool isRecurring, @JsonKey(name: 'companyId')  int companyId, @JsonKey(name: 'states')  List<PublicHolidayState> states)?  $default,) {final _that = this;
switch (_that) {
case _PublicHolidayData() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.date,_that.year,_that.isRecurring,_that.companyId,_that.states);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PublicHolidayData implements PublicHolidayData {
   _PublicHolidayData({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'name') required this.name, @JsonKey(name: 'description') this.description, @JsonKey(name: 'date') required this.date, @JsonKey(name: 'year') required this.year, @JsonKey(name: 'isRecurring') required this.isRecurring, @JsonKey(name: 'companyId') required this.companyId, @JsonKey(name: 'states') final  List<PublicHolidayState> states = const []}): _states = states;
  factory _PublicHolidayData.fromJson(Map<String, dynamic> json) => _$PublicHolidayDataFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'date') final  DateTime date;
@override@JsonKey(name: 'year') final  int year;
@override@JsonKey(name: 'isRecurring') final  bool isRecurring;
@override@JsonKey(name: 'companyId') final  int companyId;
 final  List<PublicHolidayState> _states;
@override@JsonKey(name: 'states') List<PublicHolidayState> get states {
  if (_states is EqualUnmodifiableListView) return _states;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_states);
}


/// Create a copy of PublicHolidayData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PublicHolidayDataCopyWith<_PublicHolidayData> get copyWith => __$PublicHolidayDataCopyWithImpl<_PublicHolidayData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PublicHolidayDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PublicHolidayData&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.date, date) || other.date == date)&&(identical(other.year, year) || other.year == year)&&(identical(other.isRecurring, isRecurring) || other.isRecurring == isRecurring)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&const DeepCollectionEquality().equals(other._states, _states));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,date,year,isRecurring,companyId,const DeepCollectionEquality().hash(_states));

@override
String toString() {
  return 'PublicHolidayData(id: $id, name: $name, description: $description, date: $date, year: $year, isRecurring: $isRecurring, companyId: $companyId, states: $states)';
}


}

/// @nodoc
abstract mixin class _$PublicHolidayDataCopyWith<$Res> implements $PublicHolidayDataCopyWith<$Res> {
  factory _$PublicHolidayDataCopyWith(_PublicHolidayData value, $Res Function(_PublicHolidayData) _then) = __$PublicHolidayDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'name') String name,@JsonKey(name: 'description') String? description,@JsonKey(name: 'date') DateTime date,@JsonKey(name: 'year') int year,@JsonKey(name: 'isRecurring') bool isRecurring,@JsonKey(name: 'companyId') int companyId,@JsonKey(name: 'states') List<PublicHolidayState> states
});




}
/// @nodoc
class __$PublicHolidayDataCopyWithImpl<$Res>
    implements _$PublicHolidayDataCopyWith<$Res> {
  __$PublicHolidayDataCopyWithImpl(this._self, this._then);

  final _PublicHolidayData _self;
  final $Res Function(_PublicHolidayData) _then;

/// Create a copy of PublicHolidayData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? date = null,Object? year = null,Object? isRecurring = null,Object? companyId = null,Object? states = null,}) {
  return _then(_PublicHolidayData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,isRecurring: null == isRecurring ? _self.isRecurring : isRecurring // ignore: cast_nullable_to_non_nullable
as bool,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as int,states: null == states ? _self._states : states // ignore: cast_nullable_to_non_nullable
as List<PublicHolidayState>,
  ));
}


}


/// @nodoc
mixin _$PublicHolidayState {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'name') String get name;@JsonKey(name: 'code') String? get code;
/// Create a copy of PublicHolidayState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PublicHolidayStateCopyWith<PublicHolidayState> get copyWith => _$PublicHolidayStateCopyWithImpl<PublicHolidayState>(this as PublicHolidayState, _$identity);

  /// Serializes this PublicHolidayState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PublicHolidayState&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,code);

@override
String toString() {
  return 'PublicHolidayState(id: $id, name: $name, code: $code)';
}


}

/// @nodoc
abstract mixin class $PublicHolidayStateCopyWith<$Res>  {
  factory $PublicHolidayStateCopyWith(PublicHolidayState value, $Res Function(PublicHolidayState) _then) = _$PublicHolidayStateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'name') String name,@JsonKey(name: 'code') String? code
});




}
/// @nodoc
class _$PublicHolidayStateCopyWithImpl<$Res>
    implements $PublicHolidayStateCopyWith<$Res> {
  _$PublicHolidayStateCopyWithImpl(this._self, this._then);

  final PublicHolidayState _self;
  final $Res Function(PublicHolidayState) _then;

/// Create a copy of PublicHolidayState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? code = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PublicHolidayState].
extension PublicHolidayStatePatterns on PublicHolidayState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PublicHolidayState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PublicHolidayState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PublicHolidayState value)  $default,){
final _that = this;
switch (_that) {
case _PublicHolidayState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PublicHolidayState value)?  $default,){
final _that = this;
switch (_that) {
case _PublicHolidayState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'code')  String? code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PublicHolidayState() when $default != null:
return $default(_that.id,_that.name,_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'code')  String? code)  $default,) {final _that = this;
switch (_that) {
case _PublicHolidayState():
return $default(_that.id,_that.name,_that.code);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'name')  String name, @JsonKey(name: 'code')  String? code)?  $default,) {final _that = this;
switch (_that) {
case _PublicHolidayState() when $default != null:
return $default(_that.id,_that.name,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PublicHolidayState implements PublicHolidayState {
   _PublicHolidayState({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'name') required this.name, @JsonKey(name: 'code') this.code});
  factory _PublicHolidayState.fromJson(Map<String, dynamic> json) => _$PublicHolidayStateFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'code') final  String? code;

/// Create a copy of PublicHolidayState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PublicHolidayStateCopyWith<_PublicHolidayState> get copyWith => __$PublicHolidayStateCopyWithImpl<_PublicHolidayState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PublicHolidayStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PublicHolidayState&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,code);

@override
String toString() {
  return 'PublicHolidayState(id: $id, name: $name, code: $code)';
}


}

/// @nodoc
abstract mixin class _$PublicHolidayStateCopyWith<$Res> implements $PublicHolidayStateCopyWith<$Res> {
  factory _$PublicHolidayStateCopyWith(_PublicHolidayState value, $Res Function(_PublicHolidayState) _then) = __$PublicHolidayStateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'name') String name,@JsonKey(name: 'code') String? code
});




}
/// @nodoc
class __$PublicHolidayStateCopyWithImpl<$Res>
    implements _$PublicHolidayStateCopyWith<$Res> {
  __$PublicHolidayStateCopyWithImpl(this._self, this._then);

  final _PublicHolidayState _self;
  final $Res Function(_PublicHolidayState) _then;

/// Create a copy of PublicHolidayState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? code = freezed,}) {
  return _then(_PublicHolidayState(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
