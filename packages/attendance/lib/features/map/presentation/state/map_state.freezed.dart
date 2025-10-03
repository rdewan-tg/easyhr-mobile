// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MapState {

 bool get isLoading; bool get isZoneEnabled; bool get isCameraEnabled; bool get isAttendanceAdded; bool get isConsentStatement; Map<String, String> get settings; AttendanceStatus? get status; LatLng? get currentPosition; String? get imagePath; List<ZoneModel> get zones; List<ZoneModel> get currentZones; String? get currentAddress; String? get zone; String? get errorMsg;
/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapStateCopyWith<MapState> get copyWith => _$MapStateCopyWithImpl<MapState>(this as MapState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isZoneEnabled, isZoneEnabled) || other.isZoneEnabled == isZoneEnabled)&&(identical(other.isCameraEnabled, isCameraEnabled) || other.isCameraEnabled == isCameraEnabled)&&(identical(other.isAttendanceAdded, isAttendanceAdded) || other.isAttendanceAdded == isAttendanceAdded)&&(identical(other.isConsentStatement, isConsentStatement) || other.isConsentStatement == isConsentStatement)&&const DeepCollectionEquality().equals(other.settings, settings)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentPosition, currentPosition) || other.currentPosition == currentPosition)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&const DeepCollectionEquality().equals(other.zones, zones)&&const DeepCollectionEquality().equals(other.currentZones, currentZones)&&(identical(other.currentAddress, currentAddress) || other.currentAddress == currentAddress)&&(identical(other.zone, zone) || other.zone == zone)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isZoneEnabled,isCameraEnabled,isAttendanceAdded,isConsentStatement,const DeepCollectionEquality().hash(settings),status,currentPosition,imagePath,const DeepCollectionEquality().hash(zones),const DeepCollectionEquality().hash(currentZones),currentAddress,zone,errorMsg);

@override
String toString() {
  return 'MapState(isLoading: $isLoading, isZoneEnabled: $isZoneEnabled, isCameraEnabled: $isCameraEnabled, isAttendanceAdded: $isAttendanceAdded, isConsentStatement: $isConsentStatement, settings: $settings, status: $status, currentPosition: $currentPosition, imagePath: $imagePath, zones: $zones, currentZones: $currentZones, currentAddress: $currentAddress, zone: $zone, errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class $MapStateCopyWith<$Res>  {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) _then) = _$MapStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isZoneEnabled, bool isCameraEnabled, bool isAttendanceAdded, bool isConsentStatement, Map<String, String> settings, AttendanceStatus? status, LatLng? currentPosition, String? imagePath, List<ZoneModel> zones, List<ZoneModel> currentZones, String? currentAddress, String? zone, String? errorMsg
});




}
/// @nodoc
class _$MapStateCopyWithImpl<$Res>
    implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._self, this._then);

  final MapState _self;
  final $Res Function(MapState) _then;

/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isZoneEnabled = null,Object? isCameraEnabled = null,Object? isAttendanceAdded = null,Object? isConsentStatement = null,Object? settings = null,Object? status = freezed,Object? currentPosition = freezed,Object? imagePath = freezed,Object? zones = null,Object? currentZones = null,Object? currentAddress = freezed,Object? zone = freezed,Object? errorMsg = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isZoneEnabled: null == isZoneEnabled ? _self.isZoneEnabled : isZoneEnabled // ignore: cast_nullable_to_non_nullable
as bool,isCameraEnabled: null == isCameraEnabled ? _self.isCameraEnabled : isCameraEnabled // ignore: cast_nullable_to_non_nullable
as bool,isAttendanceAdded: null == isAttendanceAdded ? _self.isAttendanceAdded : isAttendanceAdded // ignore: cast_nullable_to_non_nullable
as bool,isConsentStatement: null == isConsentStatement ? _self.isConsentStatement : isConsentStatement // ignore: cast_nullable_to_non_nullable
as bool,settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as Map<String, String>,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AttendanceStatus?,currentPosition: freezed == currentPosition ? _self.currentPosition : currentPosition // ignore: cast_nullable_to_non_nullable
as LatLng?,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,zones: null == zones ? _self.zones : zones // ignore: cast_nullable_to_non_nullable
as List<ZoneModel>,currentZones: null == currentZones ? _self.currentZones : currentZones // ignore: cast_nullable_to_non_nullable
as List<ZoneModel>,currentAddress: freezed == currentAddress ? _self.currentAddress : currentAddress // ignore: cast_nullable_to_non_nullable
as String?,zone: freezed == zone ? _self.zone : zone // ignore: cast_nullable_to_non_nullable
as String?,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MapState].
extension MapStatePatterns on MapState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MapState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MapState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MapState value)  $default,){
final _that = this;
switch (_that) {
case _MapState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MapState value)?  $default,){
final _that = this;
switch (_that) {
case _MapState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isZoneEnabled,  bool isCameraEnabled,  bool isAttendanceAdded,  bool isConsentStatement,  Map<String, String> settings,  AttendanceStatus? status,  LatLng? currentPosition,  String? imagePath,  List<ZoneModel> zones,  List<ZoneModel> currentZones,  String? currentAddress,  String? zone,  String? errorMsg)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MapState() when $default != null:
return $default(_that.isLoading,_that.isZoneEnabled,_that.isCameraEnabled,_that.isAttendanceAdded,_that.isConsentStatement,_that.settings,_that.status,_that.currentPosition,_that.imagePath,_that.zones,_that.currentZones,_that.currentAddress,_that.zone,_that.errorMsg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isZoneEnabled,  bool isCameraEnabled,  bool isAttendanceAdded,  bool isConsentStatement,  Map<String, String> settings,  AttendanceStatus? status,  LatLng? currentPosition,  String? imagePath,  List<ZoneModel> zones,  List<ZoneModel> currentZones,  String? currentAddress,  String? zone,  String? errorMsg)  $default,) {final _that = this;
switch (_that) {
case _MapState():
return $default(_that.isLoading,_that.isZoneEnabled,_that.isCameraEnabled,_that.isAttendanceAdded,_that.isConsentStatement,_that.settings,_that.status,_that.currentPosition,_that.imagePath,_that.zones,_that.currentZones,_that.currentAddress,_that.zone,_that.errorMsg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isZoneEnabled,  bool isCameraEnabled,  bool isAttendanceAdded,  bool isConsentStatement,  Map<String, String> settings,  AttendanceStatus? status,  LatLng? currentPosition,  String? imagePath,  List<ZoneModel> zones,  List<ZoneModel> currentZones,  String? currentAddress,  String? zone,  String? errorMsg)?  $default,) {final _that = this;
switch (_that) {
case _MapState() when $default != null:
return $default(_that.isLoading,_that.isZoneEnabled,_that.isCameraEnabled,_that.isAttendanceAdded,_that.isConsentStatement,_that.settings,_that.status,_that.currentPosition,_that.imagePath,_that.zones,_that.currentZones,_that.currentAddress,_that.zone,_that.errorMsg);case _:
  return null;

}
}

}

/// @nodoc


class _MapState implements MapState {
  const _MapState({this.isLoading = false, this.isZoneEnabled = true, this.isCameraEnabled = false, this.isAttendanceAdded = false, this.isConsentStatement = false, final  Map<String, String> settings = const {}, this.status, this.currentPosition, this.imagePath, final  List<ZoneModel> zones = const [], final  List<ZoneModel> currentZones = const [], this.currentAddress, this.zone, this.errorMsg}): _settings = settings,_zones = zones,_currentZones = currentZones;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isZoneEnabled;
@override@JsonKey() final  bool isCameraEnabled;
@override@JsonKey() final  bool isAttendanceAdded;
@override@JsonKey() final  bool isConsentStatement;
 final  Map<String, String> _settings;
@override@JsonKey() Map<String, String> get settings {
  if (_settings is EqualUnmodifiableMapView) return _settings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_settings);
}

@override final  AttendanceStatus? status;
@override final  LatLng? currentPosition;
@override final  String? imagePath;
 final  List<ZoneModel> _zones;
@override@JsonKey() List<ZoneModel> get zones {
  if (_zones is EqualUnmodifiableListView) return _zones;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_zones);
}

 final  List<ZoneModel> _currentZones;
@override@JsonKey() List<ZoneModel> get currentZones {
  if (_currentZones is EqualUnmodifiableListView) return _currentZones;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_currentZones);
}

@override final  String? currentAddress;
@override final  String? zone;
@override final  String? errorMsg;

/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapStateCopyWith<_MapState> get copyWith => __$MapStateCopyWithImpl<_MapState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isZoneEnabled, isZoneEnabled) || other.isZoneEnabled == isZoneEnabled)&&(identical(other.isCameraEnabled, isCameraEnabled) || other.isCameraEnabled == isCameraEnabled)&&(identical(other.isAttendanceAdded, isAttendanceAdded) || other.isAttendanceAdded == isAttendanceAdded)&&(identical(other.isConsentStatement, isConsentStatement) || other.isConsentStatement == isConsentStatement)&&const DeepCollectionEquality().equals(other._settings, _settings)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentPosition, currentPosition) || other.currentPosition == currentPosition)&&(identical(other.imagePath, imagePath) || other.imagePath == imagePath)&&const DeepCollectionEquality().equals(other._zones, _zones)&&const DeepCollectionEquality().equals(other._currentZones, _currentZones)&&(identical(other.currentAddress, currentAddress) || other.currentAddress == currentAddress)&&(identical(other.zone, zone) || other.zone == zone)&&(identical(other.errorMsg, errorMsg) || other.errorMsg == errorMsg));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isZoneEnabled,isCameraEnabled,isAttendanceAdded,isConsentStatement,const DeepCollectionEquality().hash(_settings),status,currentPosition,imagePath,const DeepCollectionEquality().hash(_zones),const DeepCollectionEquality().hash(_currentZones),currentAddress,zone,errorMsg);

@override
String toString() {
  return 'MapState(isLoading: $isLoading, isZoneEnabled: $isZoneEnabled, isCameraEnabled: $isCameraEnabled, isAttendanceAdded: $isAttendanceAdded, isConsentStatement: $isConsentStatement, settings: $settings, status: $status, currentPosition: $currentPosition, imagePath: $imagePath, zones: $zones, currentZones: $currentZones, currentAddress: $currentAddress, zone: $zone, errorMsg: $errorMsg)';
}


}

/// @nodoc
abstract mixin class _$MapStateCopyWith<$Res> implements $MapStateCopyWith<$Res> {
  factory _$MapStateCopyWith(_MapState value, $Res Function(_MapState) _then) = __$MapStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isZoneEnabled, bool isCameraEnabled, bool isAttendanceAdded, bool isConsentStatement, Map<String, String> settings, AttendanceStatus? status, LatLng? currentPosition, String? imagePath, List<ZoneModel> zones, List<ZoneModel> currentZones, String? currentAddress, String? zone, String? errorMsg
});




}
/// @nodoc
class __$MapStateCopyWithImpl<$Res>
    implements _$MapStateCopyWith<$Res> {
  __$MapStateCopyWithImpl(this._self, this._then);

  final _MapState _self;
  final $Res Function(_MapState) _then;

/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isZoneEnabled = null,Object? isCameraEnabled = null,Object? isAttendanceAdded = null,Object? isConsentStatement = null,Object? settings = null,Object? status = freezed,Object? currentPosition = freezed,Object? imagePath = freezed,Object? zones = null,Object? currentZones = null,Object? currentAddress = freezed,Object? zone = freezed,Object? errorMsg = freezed,}) {
  return _then(_MapState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isZoneEnabled: null == isZoneEnabled ? _self.isZoneEnabled : isZoneEnabled // ignore: cast_nullable_to_non_nullable
as bool,isCameraEnabled: null == isCameraEnabled ? _self.isCameraEnabled : isCameraEnabled // ignore: cast_nullable_to_non_nullable
as bool,isAttendanceAdded: null == isAttendanceAdded ? _self.isAttendanceAdded : isAttendanceAdded // ignore: cast_nullable_to_non_nullable
as bool,isConsentStatement: null == isConsentStatement ? _self.isConsentStatement : isConsentStatement // ignore: cast_nullable_to_non_nullable
as bool,settings: null == settings ? _self._settings : settings // ignore: cast_nullable_to_non_nullable
as Map<String, String>,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AttendanceStatus?,currentPosition: freezed == currentPosition ? _self.currentPosition : currentPosition // ignore: cast_nullable_to_non_nullable
as LatLng?,imagePath: freezed == imagePath ? _self.imagePath : imagePath // ignore: cast_nullable_to_non_nullable
as String?,zones: null == zones ? _self._zones : zones // ignore: cast_nullable_to_non_nullable
as List<ZoneModel>,currentZones: null == currentZones ? _self._currentZones : currentZones // ignore: cast_nullable_to_non_nullable
as List<ZoneModel>,currentAddress: freezed == currentAddress ? _self.currentAddress : currentAddress // ignore: cast_nullable_to_non_nullable
as String?,zone: freezed == zone ? _self.zone : zone // ignore: cast_nullable_to_non_nullable
as String?,errorMsg: freezed == errorMsg ? _self.errorMsg : errorMsg // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
