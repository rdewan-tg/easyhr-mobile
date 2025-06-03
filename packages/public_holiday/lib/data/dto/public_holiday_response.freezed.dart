// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_holiday_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PublicHolidayResponse _$PublicHolidayResponseFromJson(
  Map<String, dynamic> json,
) {
  return _PublicHolidayResponse.fromJson(json);
}

/// @nodoc
mixin _$PublicHolidayResponse {
  String get status => throw _privateConstructorUsedError;
  List<PublicHolidayData> get data => throw _privateConstructorUsedError;

  /// Serializes this PublicHolidayResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PublicHolidayResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PublicHolidayResponseCopyWith<PublicHolidayResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicHolidayResponseCopyWith<$Res> {
  factory $PublicHolidayResponseCopyWith(
    PublicHolidayResponse value,
    $Res Function(PublicHolidayResponse) then,
  ) = _$PublicHolidayResponseCopyWithImpl<$Res, PublicHolidayResponse>;
  @useResult
  $Res call({String status, List<PublicHolidayData> data});
}

/// @nodoc
class _$PublicHolidayResponseCopyWithImpl<
  $Res,
  $Val extends PublicHolidayResponse
>
    implements $PublicHolidayResponseCopyWith<$Res> {
  _$PublicHolidayResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PublicHolidayResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = null}) {
    return _then(
      _value.copyWith(
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            data:
                null == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as List<PublicHolidayData>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PublicHolidayResponseImplCopyWith<$Res>
    implements $PublicHolidayResponseCopyWith<$Res> {
  factory _$$PublicHolidayResponseImplCopyWith(
    _$PublicHolidayResponseImpl value,
    $Res Function(_$PublicHolidayResponseImpl) then,
  ) = __$$PublicHolidayResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, List<PublicHolidayData> data});
}

/// @nodoc
class __$$PublicHolidayResponseImplCopyWithImpl<$Res>
    extends
        _$PublicHolidayResponseCopyWithImpl<$Res, _$PublicHolidayResponseImpl>
    implements _$$PublicHolidayResponseImplCopyWith<$Res> {
  __$$PublicHolidayResponseImplCopyWithImpl(
    _$PublicHolidayResponseImpl _value,
    $Res Function(_$PublicHolidayResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PublicHolidayResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = null}) {
    return _then(
      _$PublicHolidayResponseImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        data:
            null == data
                ? _value._data
                : data // ignore: cast_nullable_to_non_nullable
                    as List<PublicHolidayData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PublicHolidayResponseImpl implements _PublicHolidayResponse {
  _$PublicHolidayResponseImpl({
    required this.status,
    final List<PublicHolidayData> data = const [],
  }) : _data = data;

  factory _$PublicHolidayResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PublicHolidayResponseImplFromJson(json);

  @override
  final String status;
  final List<PublicHolidayData> _data;
  @override
  @JsonKey()
  List<PublicHolidayData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PublicHolidayResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicHolidayResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_data),
  );

  /// Create a copy of PublicHolidayResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicHolidayResponseImplCopyWith<_$PublicHolidayResponseImpl>
  get copyWith =>
      __$$PublicHolidayResponseImplCopyWithImpl<_$PublicHolidayResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PublicHolidayResponseImplToJson(this);
  }
}

abstract class _PublicHolidayResponse implements PublicHolidayResponse {
  factory _PublicHolidayResponse({
    required final String status,
    final List<PublicHolidayData> data,
  }) = _$PublicHolidayResponseImpl;

  factory _PublicHolidayResponse.fromJson(Map<String, dynamic> json) =
      _$PublicHolidayResponseImpl.fromJson;

  @override
  String get status;
  @override
  List<PublicHolidayData> get data;

  /// Create a copy of PublicHolidayResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PublicHolidayResponseImplCopyWith<_$PublicHolidayResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

PublicHolidayData _$PublicHolidayDataFromJson(Map<String, dynamic> json) {
  return _PublicHolidayData.fromJson(json);
}

/// @nodoc
mixin _$PublicHolidayData {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'year')
  int get year => throw _privateConstructorUsedError;
  @JsonKey(name: 'isRecurring')
  bool get isRecurring => throw _privateConstructorUsedError;
  @JsonKey(name: 'companyId')
  int get companyId => throw _privateConstructorUsedError;

  /// Serializes this PublicHolidayData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PublicHolidayData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PublicHolidayDataCopyWith<PublicHolidayData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicHolidayDataCopyWith<$Res> {
  factory $PublicHolidayDataCopyWith(
    PublicHolidayData value,
    $Res Function(PublicHolidayData) then,
  ) = _$PublicHolidayDataCopyWithImpl<$Res, PublicHolidayData>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'date') DateTime date,
    @JsonKey(name: 'year') int year,
    @JsonKey(name: 'isRecurring') bool isRecurring,
    @JsonKey(name: 'companyId') int companyId,
  });
}

/// @nodoc
class _$PublicHolidayDataCopyWithImpl<$Res, $Val extends PublicHolidayData>
    implements $PublicHolidayDataCopyWith<$Res> {
  _$PublicHolidayDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PublicHolidayData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? date = null,
    Object? year = null,
    Object? isRecurring = null,
    Object? companyId = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            date:
                null == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            year:
                null == year
                    ? _value.year
                    : year // ignore: cast_nullable_to_non_nullable
                        as int,
            isRecurring:
                null == isRecurring
                    ? _value.isRecurring
                    : isRecurring // ignore: cast_nullable_to_non_nullable
                        as bool,
            companyId:
                null == companyId
                    ? _value.companyId
                    : companyId // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PublicHolidayDataImplCopyWith<$Res>
    implements $PublicHolidayDataCopyWith<$Res> {
  factory _$$PublicHolidayDataImplCopyWith(
    _$PublicHolidayDataImpl value,
    $Res Function(_$PublicHolidayDataImpl) then,
  ) = __$$PublicHolidayDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'date') DateTime date,
    @JsonKey(name: 'year') int year,
    @JsonKey(name: 'isRecurring') bool isRecurring,
    @JsonKey(name: 'companyId') int companyId,
  });
}

/// @nodoc
class __$$PublicHolidayDataImplCopyWithImpl<$Res>
    extends _$PublicHolidayDataCopyWithImpl<$Res, _$PublicHolidayDataImpl>
    implements _$$PublicHolidayDataImplCopyWith<$Res> {
  __$$PublicHolidayDataImplCopyWithImpl(
    _$PublicHolidayDataImpl _value,
    $Res Function(_$PublicHolidayDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PublicHolidayData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? date = null,
    Object? year = null,
    Object? isRecurring = null,
    Object? companyId = null,
  }) {
    return _then(
      _$PublicHolidayDataImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        date:
            null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        year:
            null == year
                ? _value.year
                : year // ignore: cast_nullable_to_non_nullable
                    as int,
        isRecurring:
            null == isRecurring
                ? _value.isRecurring
                : isRecurring // ignore: cast_nullable_to_non_nullable
                    as bool,
        companyId:
            null == companyId
                ? _value.companyId
                : companyId // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PublicHolidayDataImpl implements _PublicHolidayData {
  _$PublicHolidayDataImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'description') this.description,
    @JsonKey(name: 'date') required this.date,
    @JsonKey(name: 'year') required this.year,
    @JsonKey(name: 'isRecurring') required this.isRecurring,
    @JsonKey(name: 'companyId') required this.companyId,
  });

  factory _$PublicHolidayDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PublicHolidayDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'date')
  final DateTime date;
  @override
  @JsonKey(name: 'year')
  final int year;
  @override
  @JsonKey(name: 'isRecurring')
  final bool isRecurring;
  @override
  @JsonKey(name: 'companyId')
  final int companyId;

  @override
  String toString() {
    return 'PublicHolidayData(id: $id, name: $name, description: $description, date: $date, year: $year, isRecurring: $isRecurring, companyId: $companyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicHolidayDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.isRecurring, isRecurring) ||
                other.isRecurring == isRecurring) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    description,
    date,
    year,
    isRecurring,
    companyId,
  );

  /// Create a copy of PublicHolidayData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicHolidayDataImplCopyWith<_$PublicHolidayDataImpl> get copyWith =>
      __$$PublicHolidayDataImplCopyWithImpl<_$PublicHolidayDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PublicHolidayDataImplToJson(this);
  }
}

abstract class _PublicHolidayData implements PublicHolidayData {
  factory _PublicHolidayData({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'date') required final DateTime date,
    @JsonKey(name: 'year') required final int year,
    @JsonKey(name: 'isRecurring') required final bool isRecurring,
    @JsonKey(name: 'companyId') required final int companyId,
  }) = _$PublicHolidayDataImpl;

  factory _PublicHolidayData.fromJson(Map<String, dynamic> json) =
      _$PublicHolidayDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'date')
  DateTime get date;
  @override
  @JsonKey(name: 'year')
  int get year;
  @override
  @JsonKey(name: 'isRecurring')
  bool get isRecurring;
  @override
  @JsonKey(name: 'companyId')
  int get companyId;

  /// Create a copy of PublicHolidayData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PublicHolidayDataImplCopyWith<_$PublicHolidayDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
