// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AttendanceListModel {
  List<AttendanceModel> get data => throw _privateConstructorUsedError;
  Page get page => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceListModelCopyWith<AttendanceListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceListModelCopyWith<$Res> {
  factory $AttendanceListModelCopyWith(
    AttendanceListModel value,
    $Res Function(AttendanceListModel) then,
  ) = _$AttendanceListModelCopyWithImpl<$Res, AttendanceListModel>;
  @useResult
  $Res call({List<AttendanceModel> data, Page page});

  $PageCopyWith<$Res> get page;
}

/// @nodoc
class _$AttendanceListModelCopyWithImpl<$Res, $Val extends AttendanceListModel>
    implements $AttendanceListModelCopyWith<$Res> {
  _$AttendanceListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null, Object? page = null}) {
    return _then(
      _value.copyWith(
            data:
                null == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as List<AttendanceModel>,
            page:
                null == page
                    ? _value.page
                    : page // ignore: cast_nullable_to_non_nullable
                        as Page,
          )
          as $Val,
    );
  }

  /// Create a copy of AttendanceListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageCopyWith<$Res> get page {
    return $PageCopyWith<$Res>(_value.page, (value) {
      return _then(_value.copyWith(page: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttendanceListModelImplCopyWith<$Res>
    implements $AttendanceListModelCopyWith<$Res> {
  factory _$$AttendanceListModelImplCopyWith(
    _$AttendanceListModelImpl value,
    $Res Function(_$AttendanceListModelImpl) then,
  ) = __$$AttendanceListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AttendanceModel> data, Page page});

  @override
  $PageCopyWith<$Res> get page;
}

/// @nodoc
class __$$AttendanceListModelImplCopyWithImpl<$Res>
    extends _$AttendanceListModelCopyWithImpl<$Res, _$AttendanceListModelImpl>
    implements _$$AttendanceListModelImplCopyWith<$Res> {
  __$$AttendanceListModelImplCopyWithImpl(
    _$AttendanceListModelImpl _value,
    $Res Function(_$AttendanceListModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttendanceListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null, Object? page = null}) {
    return _then(
      _$AttendanceListModelImpl(
        data:
            null == data
                ? _value._data
                : data // ignore: cast_nullable_to_non_nullable
                    as List<AttendanceModel>,
        page:
            null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                    as Page,
      ),
    );
  }
}

/// @nodoc

class _$AttendanceListModelImpl implements _AttendanceListModel {
  _$AttendanceListModelImpl({
    final List<AttendanceModel> data = const [],
    required this.page,
  }) : _data = data;

  final List<AttendanceModel> _data;
  @override
  @JsonKey()
  List<AttendanceModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Page page;

  @override
  String toString() {
    return 'AttendanceListModel(data: $data, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceListModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_data),
    page,
  );

  /// Create a copy of AttendanceListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceListModelImplCopyWith<_$AttendanceListModelImpl> get copyWith =>
      __$$AttendanceListModelImplCopyWithImpl<_$AttendanceListModelImpl>(
        this,
        _$identity,
      );
}

abstract class _AttendanceListModel implements AttendanceListModel {
  factory _AttendanceListModel({
    final List<AttendanceModel> data,
    required final Page page,
  }) = _$AttendanceListModelImpl;

  @override
  List<AttendanceModel> get data;
  @override
  Page get page;

  /// Create a copy of AttendanceListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceListModelImplCopyWith<_$AttendanceListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
