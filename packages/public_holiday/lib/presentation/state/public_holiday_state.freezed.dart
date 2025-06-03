// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_holiday_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PublicHolidayState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<PublicHoliday> get publicHolidays => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of PublicHolidayState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PublicHolidayStateCopyWith<PublicHolidayState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicHolidayStateCopyWith<$Res> {
  factory $PublicHolidayStateCopyWith(
    PublicHolidayState value,
    $Res Function(PublicHolidayState) then,
  ) = _$PublicHolidayStateCopyWithImpl<$Res, PublicHolidayState>;
  @useResult
  $Res call({
    bool isLoading,
    List<PublicHoliday> publicHolidays,
    String? error,
  });
}

/// @nodoc
class _$PublicHolidayStateCopyWithImpl<$Res, $Val extends PublicHolidayState>
    implements $PublicHolidayStateCopyWith<$Res> {
  _$PublicHolidayStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PublicHolidayState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? publicHolidays = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            isLoading:
                null == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            publicHolidays:
                null == publicHolidays
                    ? _value.publicHolidays
                    : publicHolidays // ignore: cast_nullable_to_non_nullable
                        as List<PublicHoliday>,
            error:
                freezed == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PublicHolidayStateImplCopyWith<$Res>
    implements $PublicHolidayStateCopyWith<$Res> {
  factory _$$PublicHolidayStateImplCopyWith(
    _$PublicHolidayStateImpl value,
    $Res Function(_$PublicHolidayStateImpl) then,
  ) = __$$PublicHolidayStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    List<PublicHoliday> publicHolidays,
    String? error,
  });
}

/// @nodoc
class __$$PublicHolidayStateImplCopyWithImpl<$Res>
    extends _$PublicHolidayStateCopyWithImpl<$Res, _$PublicHolidayStateImpl>
    implements _$$PublicHolidayStateImplCopyWith<$Res> {
  __$$PublicHolidayStateImplCopyWithImpl(
    _$PublicHolidayStateImpl _value,
    $Res Function(_$PublicHolidayStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PublicHolidayState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? publicHolidays = null,
    Object? error = freezed,
  }) {
    return _then(
      _$PublicHolidayStateImpl(
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        publicHolidays:
            null == publicHolidays
                ? _value._publicHolidays
                : publicHolidays // ignore: cast_nullable_to_non_nullable
                    as List<PublicHoliday>,
        error:
            freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$PublicHolidayStateImpl implements _PublicHolidayState {
  _$PublicHolidayStateImpl({
    this.isLoading = false,
    final List<PublicHoliday> publicHolidays = const [],
    this.error,
  }) : _publicHolidays = publicHolidays;

  @override
  @JsonKey()
  final bool isLoading;
  final List<PublicHoliday> _publicHolidays;
  @override
  @JsonKey()
  List<PublicHoliday> get publicHolidays {
    if (_publicHolidays is EqualUnmodifiableListView) return _publicHolidays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_publicHolidays);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'PublicHolidayState(isLoading: $isLoading, publicHolidays: $publicHolidays, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicHolidayStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(
              other._publicHolidays,
              _publicHolidays,
            ) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    const DeepCollectionEquality().hash(_publicHolidays),
    error,
  );

  /// Create a copy of PublicHolidayState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicHolidayStateImplCopyWith<_$PublicHolidayStateImpl> get copyWith =>
      __$$PublicHolidayStateImplCopyWithImpl<_$PublicHolidayStateImpl>(
        this,
        _$identity,
      );
}

abstract class _PublicHolidayState implements PublicHolidayState {
  factory _PublicHolidayState({
    final bool isLoading,
    final List<PublicHoliday> publicHolidays,
    final String? error,
  }) = _$PublicHolidayStateImpl;

  @override
  bool get isLoading;
  @override
  List<PublicHoliday> get publicHolidays;
  @override
  String? get error;

  /// Create a copy of PublicHolidayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PublicHolidayStateImplCopyWith<_$PublicHolidayStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
