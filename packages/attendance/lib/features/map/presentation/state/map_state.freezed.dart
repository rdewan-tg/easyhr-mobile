// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MapState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isAttendanceAdded => throw _privateConstructorUsedError;
  Map<String, String> get settings => throw _privateConstructorUsedError;
  AttendanceStatus? get status => throw _privateConstructorUsedError;
  LatLng? get currentPosition => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  List<ZoneModel> get zones => throw _privateConstructorUsedError;
  List<ZoneModel> get currentZones => throw _privateConstructorUsedError;
  String? get currentAddress => throw _privateConstructorUsedError;
  String? get zone => throw _privateConstructorUsedError;
  String? get errorMsg => throw _privateConstructorUsedError;

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MapStateCopyWith<MapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res, MapState>;
  @useResult
  $Res call({
    bool isLoading,
    bool isAttendanceAdded,
    Map<String, String> settings,
    AttendanceStatus? status,
    LatLng? currentPosition,
    String? imagePath,
    List<ZoneModel> zones,
    List<ZoneModel> currentZones,
    String? currentAddress,
    String? zone,
    String? errorMsg,
  });
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res, $Val extends MapState>
    implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isAttendanceAdded = null,
    Object? settings = null,
    Object? status = freezed,
    Object? currentPosition = freezed,
    Object? imagePath = freezed,
    Object? zones = null,
    Object? currentZones = null,
    Object? currentAddress = freezed,
    Object? zone = freezed,
    Object? errorMsg = freezed,
  }) {
    return _then(
      _value.copyWith(
            isLoading:
                null == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            isAttendanceAdded:
                null == isAttendanceAdded
                    ? _value.isAttendanceAdded
                    : isAttendanceAdded // ignore: cast_nullable_to_non_nullable
                        as bool,
            settings:
                null == settings
                    ? _value.settings
                    : settings // ignore: cast_nullable_to_non_nullable
                        as Map<String, String>,
            status:
                freezed == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as AttendanceStatus?,
            currentPosition:
                freezed == currentPosition
                    ? _value.currentPosition
                    : currentPosition // ignore: cast_nullable_to_non_nullable
                        as LatLng?,
            imagePath:
                freezed == imagePath
                    ? _value.imagePath
                    : imagePath // ignore: cast_nullable_to_non_nullable
                        as String?,
            zones:
                null == zones
                    ? _value.zones
                    : zones // ignore: cast_nullable_to_non_nullable
                        as List<ZoneModel>,
            currentZones:
                null == currentZones
                    ? _value.currentZones
                    : currentZones // ignore: cast_nullable_to_non_nullable
                        as List<ZoneModel>,
            currentAddress:
                freezed == currentAddress
                    ? _value.currentAddress
                    : currentAddress // ignore: cast_nullable_to_non_nullable
                        as String?,
            zone:
                freezed == zone
                    ? _value.zone
                    : zone // ignore: cast_nullable_to_non_nullable
                        as String?,
            errorMsg:
                freezed == errorMsg
                    ? _value.errorMsg
                    : errorMsg // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MapStateImplCopyWith<$Res>
    implements $MapStateCopyWith<$Res> {
  factory _$$MapStateImplCopyWith(
    _$MapStateImpl value,
    $Res Function(_$MapStateImpl) then,
  ) = __$$MapStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    bool isAttendanceAdded,
    Map<String, String> settings,
    AttendanceStatus? status,
    LatLng? currentPosition,
    String? imagePath,
    List<ZoneModel> zones,
    List<ZoneModel> currentZones,
    String? currentAddress,
    String? zone,
    String? errorMsg,
  });
}

/// @nodoc
class __$$MapStateImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$MapStateImpl>
    implements _$$MapStateImplCopyWith<$Res> {
  __$$MapStateImplCopyWithImpl(
    _$MapStateImpl _value,
    $Res Function(_$MapStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isAttendanceAdded = null,
    Object? settings = null,
    Object? status = freezed,
    Object? currentPosition = freezed,
    Object? imagePath = freezed,
    Object? zones = null,
    Object? currentZones = null,
    Object? currentAddress = freezed,
    Object? zone = freezed,
    Object? errorMsg = freezed,
  }) {
    return _then(
      _$MapStateImpl(
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        isAttendanceAdded:
            null == isAttendanceAdded
                ? _value.isAttendanceAdded
                : isAttendanceAdded // ignore: cast_nullable_to_non_nullable
                    as bool,
        settings:
            null == settings
                ? _value._settings
                : settings // ignore: cast_nullable_to_non_nullable
                    as Map<String, String>,
        status:
            freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as AttendanceStatus?,
        currentPosition:
            freezed == currentPosition
                ? _value.currentPosition
                : currentPosition // ignore: cast_nullable_to_non_nullable
                    as LatLng?,
        imagePath:
            freezed == imagePath
                ? _value.imagePath
                : imagePath // ignore: cast_nullable_to_non_nullable
                    as String?,
        zones:
            null == zones
                ? _value._zones
                : zones // ignore: cast_nullable_to_non_nullable
                    as List<ZoneModel>,
        currentZones:
            null == currentZones
                ? _value._currentZones
                : currentZones // ignore: cast_nullable_to_non_nullable
                    as List<ZoneModel>,
        currentAddress:
            freezed == currentAddress
                ? _value.currentAddress
                : currentAddress // ignore: cast_nullable_to_non_nullable
                    as String?,
        zone:
            freezed == zone
                ? _value.zone
                : zone // ignore: cast_nullable_to_non_nullable
                    as String?,
        errorMsg:
            freezed == errorMsg
                ? _value.errorMsg
                : errorMsg // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$MapStateImpl implements _MapState {
  _$MapStateImpl({
    this.isLoading = false,
    this.isAttendanceAdded = false,
    final Map<String, String> settings = const {},
    this.status,
    this.currentPosition,
    this.imagePath,
    final List<ZoneModel> zones = const [],
    final List<ZoneModel> currentZones = const [],
    this.currentAddress,
    this.zone,
    this.errorMsg,
  }) : _settings = settings,
       _zones = zones,
       _currentZones = currentZones;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isAttendanceAdded;
  final Map<String, String> _settings;
  @override
  @JsonKey()
  Map<String, String> get settings {
    if (_settings is EqualUnmodifiableMapView) return _settings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_settings);
  }

  @override
  final AttendanceStatus? status;
  @override
  final LatLng? currentPosition;
  @override
  final String? imagePath;
  final List<ZoneModel> _zones;
  @override
  @JsonKey()
  List<ZoneModel> get zones {
    if (_zones is EqualUnmodifiableListView) return _zones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_zones);
  }

  final List<ZoneModel> _currentZones;
  @override
  @JsonKey()
  List<ZoneModel> get currentZones {
    if (_currentZones is EqualUnmodifiableListView) return _currentZones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentZones);
  }

  @override
  final String? currentAddress;
  @override
  final String? zone;
  @override
  final String? errorMsg;

  @override
  String toString() {
    return 'MapState(isLoading: $isLoading, isAttendanceAdded: $isAttendanceAdded, settings: $settings, status: $status, currentPosition: $currentPosition, imagePath: $imagePath, zones: $zones, currentZones: $currentZones, currentAddress: $currentAddress, zone: $zone, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isAttendanceAdded, isAttendanceAdded) ||
                other.isAttendanceAdded == isAttendanceAdded) &&
            const DeepCollectionEquality().equals(other._settings, _settings) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            const DeepCollectionEquality().equals(other._zones, _zones) &&
            const DeepCollectionEquality().equals(
              other._currentZones,
              _currentZones,
            ) &&
            (identical(other.currentAddress, currentAddress) ||
                other.currentAddress == currentAddress) &&
            (identical(other.zone, zone) || other.zone == zone) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    isAttendanceAdded,
    const DeepCollectionEquality().hash(_settings),
    status,
    currentPosition,
    imagePath,
    const DeepCollectionEquality().hash(_zones),
    const DeepCollectionEquality().hash(_currentZones),
    currentAddress,
    zone,
    errorMsg,
  );

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapStateImplCopyWith<_$MapStateImpl> get copyWith =>
      __$$MapStateImplCopyWithImpl<_$MapStateImpl>(this, _$identity);
}

abstract class _MapState implements MapState {
  factory _MapState({
    final bool isLoading,
    final bool isAttendanceAdded,
    final Map<String, String> settings,
    final AttendanceStatus? status,
    final LatLng? currentPosition,
    final String? imagePath,
    final List<ZoneModel> zones,
    final List<ZoneModel> currentZones,
    final String? currentAddress,
    final String? zone,
    final String? errorMsg,
  }) = _$MapStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isAttendanceAdded;
  @override
  Map<String, String> get settings;
  @override
  AttendanceStatus? get status;
  @override
  LatLng? get currentPosition;
  @override
  String? get imagePath;
  @override
  List<ZoneModel> get zones;
  @override
  List<ZoneModel> get currentZones;
  @override
  String? get currentAddress;
  @override
  String? get zone;
  @override
  String? get errorMsg;

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapStateImplCopyWith<_$MapStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
