// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AttendanceState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<AttendanceModel> get attendanceList =>
      throw _privateConstructorUsedError;
  String? get errorMsg => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceStateCopyWith<AttendanceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceStateCopyWith<$Res> {
  factory $AttendanceStateCopyWith(
    AttendanceState value,
    $Res Function(AttendanceState) then,
  ) = _$AttendanceStateCopyWithImpl<$Res, AttendanceState>;
  @useResult
  $Res call({
    bool isLoading,
    List<AttendanceModel> attendanceList,
    String? errorMsg,
  });
}

/// @nodoc
class _$AttendanceStateCopyWithImpl<$Res, $Val extends AttendanceState>
    implements $AttendanceStateCopyWith<$Res> {
  _$AttendanceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? attendanceList = null,
    Object? errorMsg = freezed,
  }) {
    return _then(
      _value.copyWith(
            isLoading:
                null == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            attendanceList:
                null == attendanceList
                    ? _value.attendanceList
                    : attendanceList // ignore: cast_nullable_to_non_nullable
                        as List<AttendanceModel>,
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
abstract class _$$AttendanceStateImplCopyWith<$Res>
    implements $AttendanceStateCopyWith<$Res> {
  factory _$$AttendanceStateImplCopyWith(
    _$AttendanceStateImpl value,
    $Res Function(_$AttendanceStateImpl) then,
  ) = __$$AttendanceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    List<AttendanceModel> attendanceList,
    String? errorMsg,
  });
}

/// @nodoc
class __$$AttendanceStateImplCopyWithImpl<$Res>
    extends _$AttendanceStateCopyWithImpl<$Res, _$AttendanceStateImpl>
    implements _$$AttendanceStateImplCopyWith<$Res> {
  __$$AttendanceStateImplCopyWithImpl(
    _$AttendanceStateImpl _value,
    $Res Function(_$AttendanceStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? attendanceList = null,
    Object? errorMsg = freezed,
  }) {
    return _then(
      _$AttendanceStateImpl(
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        attendanceList:
            null == attendanceList
                ? _value._attendanceList
                : attendanceList // ignore: cast_nullable_to_non_nullable
                    as List<AttendanceModel>,
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

class _$AttendanceStateImpl implements _AttendanceState {
  _$AttendanceStateImpl({
    this.isLoading = false,
    final List<AttendanceModel> attendanceList = const [],
    this.errorMsg,
  }) : _attendanceList = attendanceList;

  @override
  @JsonKey()
  final bool isLoading;
  final List<AttendanceModel> _attendanceList;
  @override
  @JsonKey()
  List<AttendanceModel> get attendanceList {
    if (_attendanceList is EqualUnmodifiableListView) return _attendanceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendanceList);
  }

  @override
  final String? errorMsg;

  @override
  String toString() {
    return 'AttendanceState(isLoading: $isLoading, attendanceList: $attendanceList, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(
              other._attendanceList,
              _attendanceList,
            ) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    const DeepCollectionEquality().hash(_attendanceList),
    errorMsg,
  );

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceStateImplCopyWith<_$AttendanceStateImpl> get copyWith =>
      __$$AttendanceStateImplCopyWithImpl<_$AttendanceStateImpl>(
        this,
        _$identity,
      );
}

abstract class _AttendanceState implements AttendanceState {
  factory _AttendanceState({
    final bool isLoading,
    final List<AttendanceModel> attendanceList,
    final String? errorMsg,
  }) = _$AttendanceStateImpl;

  @override
  bool get isLoading;
  @override
  List<AttendanceModel> get attendanceList;
  @override
  String? get errorMsg;

  /// Create a copy of AttendanceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceStateImplCopyWith<_$AttendanceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
