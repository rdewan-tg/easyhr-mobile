// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingState {

 bool get isLoading; bool get isConsentAccepted; int get scheduleTime; bool get isScheduleTimeSet; List<NotificationScheduleEntityData> get notificationSchedules; bool get isNotificationScheduleRemoved; bool get isNotificationScheduleCleared; String get language; String get themeMode; String get timeZone; Map<String, String> get settings; int get orderRunningNumber; String? get errorMsg;
/// Create a copy of SettingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingStateCopyWith<SettingState> get copyWith => _$SettingStateCopyWithImpl<SettingState>(this as SettingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isConsentAccepted, isConsentAccepted) || other.isConsentAccepted == isConsentAccepted)&&(identical(other.scheduleTime, scheduleTime) || other.scheduleTime == scheduleTime)&&(identical(other.isScheduleTimeSet, isScheduleTimeSet) || other.isScheduleTimeSet == isScheduleTimeSet)&&const DeepCollectionEquality().equals(other.notificationSchedules, notificationSchedules)&&(identical(other.isNotificationScheduleRemoved, isNotificationScheduleRemoved) || other.isNotificationScheduleRemoved == isNotificationScheduleRemoved)&&(identical(other.isNotificationScheduleCleared, isNotificationScheduleCleared) || other.isNotificationScheduleCleared == isNotificationScheduleCleared)&&(identical(other.language, language) || other.language == language)&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode)&&(identical(other.timeZone, timeZone) || other.timeZone == timeZone)&&const DeepCollectionEquality().equals(other.settings, settings)&&(identical(other.orderRunningNumber, orderRunningNumber) || other.orderRunningNumber == orderRunningNumber)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isConsentAccepted,scheduleTime,isScheduleTimeSet,const DeepCollectionEquality().hash(notificationSchedules),isNotificationScheduleRemoved,isNotificationScheduleCleared,language,themeMode,timeZone,const DeepCollectionEquality().hash(settings),orderRunningNumber,errorMsg);

@override
String toString() {
  return 'SettingState(isLoading: $isLoading, isConsentAccepted: $isConsentAccepted, scheduleTime: $scheduleTime, isScheduleTimeSet: $isScheduleTimeSet, notificationSchedules: $notificationSchedules, isNotificationScheduleRemoved: $isNotificationScheduleRemoved, isNotificationScheduleCleared: $isNotificationScheduleCleared, language: $language, themeMode: $themeMode, timeZone: $timeZone, settings: $settings, orderRunningNumber: $orderRunningNumber, errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class $SettingStateCopyWith<$Res>  {
  factory $SettingStateCopyWith(SettingState value, $Res Function(SettingState) _then) = _$SettingStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isConsentAccepted, int scheduleTime, bool isScheduleTimeSet, List<NotificationScheduleEntityData> notificationSchedules, bool isNotificationScheduleRemoved, bool isNotificationScheduleCleared, String language, String themeMode, String timeZone, Map<String, String> settings, int orderRunningNumber, String? errorMsg
});




}
/// @nodoc
class _$SettingStateCopyWithImpl<$Res>
    implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._self, this._then);

  final SettingState _self;
  final $Res Function(SettingState) _then;

/// Create a copy of SettingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isConsentAccepted = null,Object? scheduleTime = null,Object? isScheduleTimeSet = null,Object? notificationSchedules = null,Object? isNotificationScheduleRemoved = null,Object? isNotificationScheduleCleared = null,Object? language = null,Object? themeMode = null,Object? timeZone = null,Object? settings = null,Object? orderRunningNumber = null,Object? errorMsg = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isConsentAccepted: null == isConsentAccepted ? _self.isConsentAccepted : isConsentAccepted // ignore: cast_nullable_to_non_nullable
as bool,scheduleTime: null == scheduleTime ? _self.scheduleTime : scheduleTime // ignore: cast_nullable_to_non_nullable
as int,isScheduleTimeSet: null == isScheduleTimeSet ? _self.isScheduleTimeSet : isScheduleTimeSet // ignore: cast_nullable_to_non_nullable
as bool,notificationSchedules: null == notificationSchedules ? _self.notificationSchedules : notificationSchedules // ignore: cast_nullable_to_non_nullable
as List<NotificationScheduleEntityData>,isNotificationScheduleRemoved: null == isNotificationScheduleRemoved ? _self.isNotificationScheduleRemoved : isNotificationScheduleRemoved // ignore: cast_nullable_to_non_nullable
as bool,isNotificationScheduleCleared: null == isNotificationScheduleCleared ? _self.isNotificationScheduleCleared : isNotificationScheduleCleared // ignore: cast_nullable_to_non_nullable
as bool,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as String,timeZone: null == timeZone ? _self.timeZone : timeZone // ignore: cast_nullable_to_non_nullable
as String,settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as Map<String, String>,orderRunningNumber: null == orderRunningNumber ? _self.orderRunningNumber : orderRunningNumber // ignore: cast_nullable_to_non_nullable
as int,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SettingState].
extension SettingStatePatterns on SettingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingState value)  $default,){
final _that = this;
switch (_that) {
case _SettingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingState value)?  $default,){
final _that = this;
switch (_that) {
case _SettingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isConsentAccepted,  int scheduleTime,  bool isScheduleTimeSet,  List<NotificationScheduleEntityData> notificationSchedules,  bool isNotificationScheduleRemoved,  bool isNotificationScheduleCleared,  String language,  String themeMode,  String timeZone,  Map<String, String> settings,  int orderRunningNumber,  String? errorMsg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingState() when $default != null:
return $default(_that.isLoading,_that.isConsentAccepted,_that.scheduleTime,_that.isScheduleTimeSet,_that.notificationSchedules,_that.isNotificationScheduleRemoved,_that.isNotificationScheduleCleared,_that.language,_that.themeMode,_that.timeZone,_that.settings,_that.orderRunningNumber,_that.errorMsg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isConsentAccepted,  int scheduleTime,  bool isScheduleTimeSet,  List<NotificationScheduleEntityData> notificationSchedules,  bool isNotificationScheduleRemoved,  bool isNotificationScheduleCleared,  String language,  String themeMode,  String timeZone,  Map<String, String> settings,  int orderRunningNumber,  String? errorMsg)  $default,) {final _that = this;
switch (_that) {
case _SettingState():
return $default(_that.isLoading,_that.isConsentAccepted,_that.scheduleTime,_that.isScheduleTimeSet,_that.notificationSchedules,_that.isNotificationScheduleRemoved,_that.isNotificationScheduleCleared,_that.language,_that.themeMode,_that.timeZone,_that.settings,_that.orderRunningNumber,_that.errorMsg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isConsentAccepted,  int scheduleTime,  bool isScheduleTimeSet,  List<NotificationScheduleEntityData> notificationSchedules,  bool isNotificationScheduleRemoved,  bool isNotificationScheduleCleared,  String language,  String themeMode,  String timeZone,  Map<String, String> settings,  int orderRunningNumber,  String? errorMsg)?  $default,) {final _that = this;
switch (_that) {
case _SettingState() when $default != null:
return $default(_that.isLoading,_that.isConsentAccepted,_that.scheduleTime,_that.isScheduleTimeSet,_that.notificationSchedules,_that.isNotificationScheduleRemoved,_that.isNotificationScheduleCleared,_that.language,_that.themeMode,_that.timeZone,_that.settings,_that.orderRunningNumber,_that.errorMsg);case _:
  return null;

}
}

}

/// @nodoc


class _SettingState implements SettingState {
  const _SettingState({this.isLoading = false, this.isConsentAccepted = false, this.scheduleTime = 0, this.isScheduleTimeSet = false, final  List<NotificationScheduleEntityData> notificationSchedules = const [], this.isNotificationScheduleRemoved = false, this.isNotificationScheduleCleared = false, this.language = 'en', this.themeMode = 'light', this.timeZone = 'Asia/Kolkata', final  Map<String, String> settings = const {}, this.orderRunningNumber = 0, this.errorMsg}): _notificationSchedules = notificationSchedules,_settings = settings;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isConsentAccepted;
@override@JsonKey() final  int scheduleTime;
@override@JsonKey() final  bool isScheduleTimeSet;
 final  List<NotificationScheduleEntityData> _notificationSchedules;
@override@JsonKey() List<NotificationScheduleEntityData> get notificationSchedules {
  if (_notificationSchedules is EqualUnmodifiableListView) return _notificationSchedules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notificationSchedules);
}

@override@JsonKey() final  bool isNotificationScheduleRemoved;
@override@JsonKey() final  bool isNotificationScheduleCleared;
@override@JsonKey() final  String language;
@override@JsonKey() final  String themeMode;
@override@JsonKey() final  String timeZone;
 final  Map<String, String> _settings;
@override@JsonKey() Map<String, String> get settings {
  if (_settings is EqualUnmodifiableMapView) return _settings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_settings);
}

@override@JsonKey() final  int orderRunningNumber;
@override final  String? errorMsg;

/// Create a copy of SettingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingStateCopyWith<_SettingState> get copyWith => __$SettingStateCopyWithImpl<_SettingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isConsentAccepted, isConsentAccepted) || other.isConsentAccepted == isConsentAccepted)&&(identical(other.scheduleTime, scheduleTime) || other.scheduleTime == scheduleTime)&&(identical(other.isScheduleTimeSet, isScheduleTimeSet) || other.isScheduleTimeSet == isScheduleTimeSet)&&const DeepCollectionEquality().equals(other._notificationSchedules, _notificationSchedules)&&(identical(other.isNotificationScheduleRemoved, isNotificationScheduleRemoved) || other.isNotificationScheduleRemoved == isNotificationScheduleRemoved)&&(identical(other.isNotificationScheduleCleared, isNotificationScheduleCleared) || other.isNotificationScheduleCleared == isNotificationScheduleCleared)&&(identical(other.language, language) || other.language == language)&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode)&&(identical(other.timeZone, timeZone) || other.timeZone == timeZone)&&const DeepCollectionEquality().equals(other._settings, _settings)&&(identical(other.orderRunningNumber, orderRunningNumber) || other.orderRunningNumber == orderRunningNumber)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isConsentAccepted,scheduleTime,isScheduleTimeSet,const DeepCollectionEquality().hash(_notificationSchedules),isNotificationScheduleRemoved,isNotificationScheduleCleared,language,themeMode,timeZone,const DeepCollectionEquality().hash(_settings),orderRunningNumber,errorMsg);

@override
String toString() {
  return 'SettingState(isLoading: $isLoading, isConsentAccepted: $isConsentAccepted, scheduleTime: $scheduleTime, isScheduleTimeSet: $isScheduleTimeSet, notificationSchedules: $notificationSchedules, isNotificationScheduleRemoved: $isNotificationScheduleRemoved, isNotificationScheduleCleared: $isNotificationScheduleCleared, language: $language, themeMode: $themeMode, timeZone: $timeZone, settings: $settings, orderRunningNumber: $orderRunningNumber, errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class _$SettingStateCopyWith<$Res> implements $SettingStateCopyWith<$Res> {
  factory _$SettingStateCopyWith(_SettingState value, $Res Function(_SettingState) _then) = __$SettingStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isConsentAccepted, int scheduleTime, bool isScheduleTimeSet, List<NotificationScheduleEntityData> notificationSchedules, bool isNotificationScheduleRemoved, bool isNotificationScheduleCleared, String language, String themeMode, String timeZone, Map<String, String> settings, int orderRunningNumber, String? errorMsg
});




}
/// @nodoc
class __$SettingStateCopyWithImpl<$Res>
    implements _$SettingStateCopyWith<$Res> {
  __$SettingStateCopyWithImpl(this._self, this._then);

  final _SettingState _self;
  final $Res Function(_SettingState) _then;

/// Create a copy of SettingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isConsentAccepted = null,Object? scheduleTime = null,Object? isScheduleTimeSet = null,Object? notificationSchedules = null,Object? isNotificationScheduleRemoved = null,Object? isNotificationScheduleCleared = null,Object? language = null,Object? themeMode = null,Object? timeZone = null,Object? settings = null,Object? orderRunningNumber = null,Object? errorMsg = freezed,}) {
  return _then(_SettingState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isConsentAccepted: null == isConsentAccepted ? _self.isConsentAccepted : isConsentAccepted // ignore: cast_nullable_to_non_nullable
as bool,scheduleTime: null == scheduleTime ? _self.scheduleTime : scheduleTime // ignore: cast_nullable_to_non_nullable
as int,isScheduleTimeSet: null == isScheduleTimeSet ? _self.isScheduleTimeSet : isScheduleTimeSet // ignore: cast_nullable_to_non_nullable
as bool,notificationSchedules: null == notificationSchedules ? _self._notificationSchedules : notificationSchedules // ignore: cast_nullable_to_non_nullable
as List<NotificationScheduleEntityData>,isNotificationScheduleRemoved: null == isNotificationScheduleRemoved ? _self.isNotificationScheduleRemoved : isNotificationScheduleRemoved // ignore: cast_nullable_to_non_nullable
as bool,isNotificationScheduleCleared: null == isNotificationScheduleCleared ? _self.isNotificationScheduleCleared : isNotificationScheduleCleared // ignore: cast_nullable_to_non_nullable
as bool,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as String,timeZone: null == timeZone ? _self.timeZone : timeZone // ignore: cast_nullable_to_non_nullable
as String,settings: null == settings ? _self._settings : settings // ignore: cast_nullable_to_non_nullable
as Map<String, String>,orderRunningNumber: null == orderRunningNumber ? _self.orderRunningNumber : orderRunningNumber // ignore: cast_nullable_to_non_nullable
as int,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
