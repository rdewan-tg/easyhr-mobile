// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_holiday.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PublicHoliday {

 int get id; String get name; String? get description; String get date; String get day;// Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
 String get month;// January, February, March, April, May, June, July, August, September, October, November, December
 int get year; bool get isRecurring; bool get isPast;// true if the public holiday is in the past
 bool get isInCurrentMonth;// true if the public holiday is in the current month
 List<String> get states;
/// Create a copy of PublicHoliday
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PublicHolidayCopyWith<PublicHoliday> get copyWith => _$PublicHolidayCopyWithImpl<PublicHoliday>(this as PublicHoliday, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PublicHoliday&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.date, date) || other.date == date)&&(identical(other.day, day) || other.day == day)&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year)&&(identical(other.isRecurring, isRecurring) || other.isRecurring == isRecurring)&&(identical(other.isPast, isPast) || other.isPast == isPast)&&(identical(other.isInCurrentMonth, isInCurrentMonth) || other.isInCurrentMonth == isInCurrentMonth)&&const DeepCollectionEquality().equals(other.states, states));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,date,day,month,year,isRecurring,isPast,isInCurrentMonth,const DeepCollectionEquality().hash(states));

@override
String toString() {
  return 'PublicHoliday(id: $id, name: $name, description: $description, date: $date, day: $day, month: $month, year: $year, isRecurring: $isRecurring, isPast: $isPast, isInCurrentMonth: $isInCurrentMonth, states: $states)';
}


}

/// @nodoc
abstract mixin class $PublicHolidayCopyWith<$Res>  {
  factory $PublicHolidayCopyWith(PublicHoliday value, $Res Function(PublicHoliday) _then) = _$PublicHolidayCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? description, String date, String day, String month, int year, bool isRecurring, bool isPast, bool isInCurrentMonth, List<String> states
});




}
/// @nodoc
class _$PublicHolidayCopyWithImpl<$Res>
    implements $PublicHolidayCopyWith<$Res> {
  _$PublicHolidayCopyWithImpl(this._self, this._then);

  final PublicHoliday _self;
  final $Res Function(PublicHoliday) _then;

/// Create a copy of PublicHoliday
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? date = null,Object? day = null,Object? month = null,Object? year = null,Object? isRecurring = null,Object? isPast = null,Object? isInCurrentMonth = null,Object? states = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,isRecurring: null == isRecurring ? _self.isRecurring : isRecurring // ignore: cast_nullable_to_non_nullable
as bool,isPast: null == isPast ? _self.isPast : isPast // ignore: cast_nullable_to_non_nullable
as bool,isInCurrentMonth: null == isInCurrentMonth ? _self.isInCurrentMonth : isInCurrentMonth // ignore: cast_nullable_to_non_nullable
as bool,states: null == states ? _self.states : states // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [PublicHoliday].
extension PublicHolidayPatterns on PublicHoliday {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PublicHoliday value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PublicHoliday() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PublicHoliday value)  $default,){
final _that = this;
switch (_that) {
case _PublicHoliday():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PublicHoliday value)?  $default,){
final _that = this;
switch (_that) {
case _PublicHoliday() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? description,  String date,  String day,  String month,  int year,  bool isRecurring,  bool isPast,  bool isInCurrentMonth,  List<String> states)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PublicHoliday() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.date,_that.day,_that.month,_that.year,_that.isRecurring,_that.isPast,_that.isInCurrentMonth,_that.states);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? description,  String date,  String day,  String month,  int year,  bool isRecurring,  bool isPast,  bool isInCurrentMonth,  List<String> states)  $default,) {final _that = this;
switch (_that) {
case _PublicHoliday():
return $default(_that.id,_that.name,_that.description,_that.date,_that.day,_that.month,_that.year,_that.isRecurring,_that.isPast,_that.isInCurrentMonth,_that.states);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? description,  String date,  String day,  String month,  int year,  bool isRecurring,  bool isPast,  bool isInCurrentMonth,  List<String> states)?  $default,) {final _that = this;
switch (_that) {
case _PublicHoliday() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.date,_that.day,_that.month,_that.year,_that.isRecurring,_that.isPast,_that.isInCurrentMonth,_that.states);case _:
  return null;

}
}

}

/// @nodoc


class _PublicHoliday implements PublicHoliday {
   _PublicHoliday({required this.id, required this.name, this.description, required this.date, required this.day, required this.month, required this.year, required this.isRecurring, required this.isPast, required this.isInCurrentMonth, final  List<String> states = const []}): _states = states;
  

@override final  int id;
@override final  String name;
@override final  String? description;
@override final  String date;
@override final  String day;
// Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
@override final  String month;
// January, February, March, April, May, June, July, August, September, October, November, December
@override final  int year;
@override final  bool isRecurring;
@override final  bool isPast;
// true if the public holiday is in the past
@override final  bool isInCurrentMonth;
// true if the public holiday is in the current month
 final  List<String> _states;
// true if the public holiday is in the current month
@override@JsonKey() List<String> get states {
  if (_states is EqualUnmodifiableListView) return _states;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_states);
}


/// Create a copy of PublicHoliday
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PublicHolidayCopyWith<_PublicHoliday> get copyWith => __$PublicHolidayCopyWithImpl<_PublicHoliday>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PublicHoliday&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.date, date) || other.date == date)&&(identical(other.day, day) || other.day == day)&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year)&&(identical(other.isRecurring, isRecurring) || other.isRecurring == isRecurring)&&(identical(other.isPast, isPast) || other.isPast == isPast)&&(identical(other.isInCurrentMonth, isInCurrentMonth) || other.isInCurrentMonth == isInCurrentMonth)&&const DeepCollectionEquality().equals(other._states, _states));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,date,day,month,year,isRecurring,isPast,isInCurrentMonth,const DeepCollectionEquality().hash(_states));

@override
String toString() {
  return 'PublicHoliday(id: $id, name: $name, description: $description, date: $date, day: $day, month: $month, year: $year, isRecurring: $isRecurring, isPast: $isPast, isInCurrentMonth: $isInCurrentMonth, states: $states)';
}


}

/// @nodoc
abstract mixin class _$PublicHolidayCopyWith<$Res> implements $PublicHolidayCopyWith<$Res> {
  factory _$PublicHolidayCopyWith(_PublicHoliday value, $Res Function(_PublicHoliday) _then) = __$PublicHolidayCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? description, String date, String day, String month, int year, bool isRecurring, bool isPast, bool isInCurrentMonth, List<String> states
});




}
/// @nodoc
class __$PublicHolidayCopyWithImpl<$Res>
    implements _$PublicHolidayCopyWith<$Res> {
  __$PublicHolidayCopyWithImpl(this._self, this._then);

  final _PublicHoliday _self;
  final $Res Function(_PublicHoliday) _then;

/// Create a copy of PublicHoliday
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? date = null,Object? day = null,Object? month = null,Object? year = null,Object? isRecurring = null,Object? isPast = null,Object? isInCurrentMonth = null,Object? states = null,}) {
  return _then(_PublicHoliday(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,isRecurring: null == isRecurring ? _self.isRecurring : isRecurring // ignore: cast_nullable_to_non_nullable
as bool,isPast: null == isPast ? _self.isPast : isPast // ignore: cast_nullable_to_non_nullable
as bool,isInCurrentMonth: null == isInCurrentMonth ? _self.isInCurrentMonth : isInCurrentMonth // ignore: cast_nullable_to_non_nullable
as bool,states: null == states ? _self._states : states // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
