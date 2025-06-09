// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_holiday.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PublicHoliday {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get day =>
      throw _privateConstructorUsedError; // Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
  String get month =>
      throw _privateConstructorUsedError; // January, February, March, April, May, June, July, August, September, October, November, December
  int get year => throw _privateConstructorUsedError;
  bool get isRecurring => throw _privateConstructorUsedError;
  bool get isPast =>
      throw _privateConstructorUsedError; // true if the public holiday is in the past
  bool get isInCurrentMonth =>
      throw _privateConstructorUsedError; // true if the public holiday is in the current month
  List<String> get states => throw _privateConstructorUsedError;

  /// Create a copy of PublicHoliday
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PublicHolidayCopyWith<PublicHoliday> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicHolidayCopyWith<$Res> {
  factory $PublicHolidayCopyWith(
    PublicHoliday value,
    $Res Function(PublicHoliday) then,
  ) = _$PublicHolidayCopyWithImpl<$Res, PublicHoliday>;
  @useResult
  $Res call({
    int id,
    String name,
    String? description,
    String date,
    String day,
    String month,
    int year,
    bool isRecurring,
    bool isPast,
    bool isInCurrentMonth,
    List<String> states,
  });
}

/// @nodoc
class _$PublicHolidayCopyWithImpl<$Res, $Val extends PublicHoliday>
    implements $PublicHolidayCopyWith<$Res> {
  _$PublicHolidayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PublicHoliday
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? date = null,
    Object? day = null,
    Object? month = null,
    Object? year = null,
    Object? isRecurring = null,
    Object? isPast = null,
    Object? isInCurrentMonth = null,
    Object? states = null,
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
                        as String,
            day:
                null == day
                    ? _value.day
                    : day // ignore: cast_nullable_to_non_nullable
                        as String,
            month:
                null == month
                    ? _value.month
                    : month // ignore: cast_nullable_to_non_nullable
                        as String,
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
            isPast:
                null == isPast
                    ? _value.isPast
                    : isPast // ignore: cast_nullable_to_non_nullable
                        as bool,
            isInCurrentMonth:
                null == isInCurrentMonth
                    ? _value.isInCurrentMonth
                    : isInCurrentMonth // ignore: cast_nullable_to_non_nullable
                        as bool,
            states:
                null == states
                    ? _value.states
                    : states // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PublicHolidayImplCopyWith<$Res>
    implements $PublicHolidayCopyWith<$Res> {
  factory _$$PublicHolidayImplCopyWith(
    _$PublicHolidayImpl value,
    $Res Function(_$PublicHolidayImpl) then,
  ) = __$$PublicHolidayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String? description,
    String date,
    String day,
    String month,
    int year,
    bool isRecurring,
    bool isPast,
    bool isInCurrentMonth,
    List<String> states,
  });
}

/// @nodoc
class __$$PublicHolidayImplCopyWithImpl<$Res>
    extends _$PublicHolidayCopyWithImpl<$Res, _$PublicHolidayImpl>
    implements _$$PublicHolidayImplCopyWith<$Res> {
  __$$PublicHolidayImplCopyWithImpl(
    _$PublicHolidayImpl _value,
    $Res Function(_$PublicHolidayImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PublicHoliday
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? date = null,
    Object? day = null,
    Object? month = null,
    Object? year = null,
    Object? isRecurring = null,
    Object? isPast = null,
    Object? isInCurrentMonth = null,
    Object? states = null,
  }) {
    return _then(
      _$PublicHolidayImpl(
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
                    as String,
        day:
            null == day
                ? _value.day
                : day // ignore: cast_nullable_to_non_nullable
                    as String,
        month:
            null == month
                ? _value.month
                : month // ignore: cast_nullable_to_non_nullable
                    as String,
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
        isPast:
            null == isPast
                ? _value.isPast
                : isPast // ignore: cast_nullable_to_non_nullable
                    as bool,
        isInCurrentMonth:
            null == isInCurrentMonth
                ? _value.isInCurrentMonth
                : isInCurrentMonth // ignore: cast_nullable_to_non_nullable
                    as bool,
        states:
            null == states
                ? _value._states
                : states // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$PublicHolidayImpl implements _PublicHoliday {
  _$PublicHolidayImpl({
    required this.id,
    required this.name,
    this.description,
    required this.date,
    required this.day,
    required this.month,
    required this.year,
    required this.isRecurring,
    required this.isPast,
    required this.isInCurrentMonth,
    final List<String> states = const [],
  }) : _states = states;

  @override
  final int id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String date;
  @override
  final String day;
  // Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
  @override
  final String month;
  // January, February, March, April, May, June, July, August, September, October, November, December
  @override
  final int year;
  @override
  final bool isRecurring;
  @override
  final bool isPast;
  // true if the public holiday is in the past
  @override
  final bool isInCurrentMonth;
  // true if the public holiday is in the current month
  final List<String> _states;
  // true if the public holiday is in the current month
  @override
  @JsonKey()
  List<String> get states {
    if (_states is EqualUnmodifiableListView) return _states;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_states);
  }

  @override
  String toString() {
    return 'PublicHoliday(id: $id, name: $name, description: $description, date: $date, day: $day, month: $month, year: $year, isRecurring: $isRecurring, isPast: $isPast, isInCurrentMonth: $isInCurrentMonth, states: $states)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicHolidayImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.isRecurring, isRecurring) ||
                other.isRecurring == isRecurring) &&
            (identical(other.isPast, isPast) || other.isPast == isPast) &&
            (identical(other.isInCurrentMonth, isInCurrentMonth) ||
                other.isInCurrentMonth == isInCurrentMonth) &&
            const DeepCollectionEquality().equals(other._states, _states));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    description,
    date,
    day,
    month,
    year,
    isRecurring,
    isPast,
    isInCurrentMonth,
    const DeepCollectionEquality().hash(_states),
  );

  /// Create a copy of PublicHoliday
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicHolidayImplCopyWith<_$PublicHolidayImpl> get copyWith =>
      __$$PublicHolidayImplCopyWithImpl<_$PublicHolidayImpl>(this, _$identity);
}

abstract class _PublicHoliday implements PublicHoliday {
  factory _PublicHoliday({
    required final int id,
    required final String name,
    final String? description,
    required final String date,
    required final String day,
    required final String month,
    required final int year,
    required final bool isRecurring,
    required final bool isPast,
    required final bool isInCurrentMonth,
    final List<String> states,
  }) = _$PublicHolidayImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  String get date;
  @override
  String get day; // Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
  @override
  String get month; // January, February, March, April, May, June, July, August, September, October, November, December
  @override
  int get year;
  @override
  bool get isRecurring;
  @override
  bool get isPast; // true if the public holiday is in the past
  @override
  bool get isInCurrentMonth; // true if the public holiday is in the current month
  @override
  List<String> get states;

  /// Create a copy of PublicHoliday
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PublicHolidayImplCopyWith<_$PublicHolidayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
