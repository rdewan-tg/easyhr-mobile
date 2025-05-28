// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_read_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NotificationReadResponse _$NotificationReadResponseFromJson(
  Map<String, dynamic> json,
) {
  return _NotificationReadResponse.fromJson(json);
}

/// @nodoc
mixin _$NotificationReadResponse {
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  NotificationReadItem get data => throw _privateConstructorUsedError;

  /// Serializes this NotificationReadResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationReadResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationReadResponseCopyWith<NotificationReadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationReadResponseCopyWith<$Res> {
  factory $NotificationReadResponseCopyWith(
    NotificationReadResponse value,
    $Res Function(NotificationReadResponse) then,
  ) = _$NotificationReadResponseCopyWithImpl<$Res, NotificationReadResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'status') String status,
    @JsonKey(name: 'data') NotificationReadItem data,
  });

  $NotificationReadItemCopyWith<$Res> get data;
}

/// @nodoc
class _$NotificationReadResponseCopyWithImpl<
  $Res,
  $Val extends NotificationReadResponse
>
    implements $NotificationReadResponseCopyWith<$Res> {
  _$NotificationReadResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationReadResponse
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
                        as NotificationReadItem,
          )
          as $Val,
    );
  }

  /// Create a copy of NotificationReadResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationReadItemCopyWith<$Res> get data {
    return $NotificationReadItemCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationReadResponseImplCopyWith<$Res>
    implements $NotificationReadResponseCopyWith<$Res> {
  factory _$$NotificationReadResponseImplCopyWith(
    _$NotificationReadResponseImpl value,
    $Res Function(_$NotificationReadResponseImpl) then,
  ) = __$$NotificationReadResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'status') String status,
    @JsonKey(name: 'data') NotificationReadItem data,
  });

  @override
  $NotificationReadItemCopyWith<$Res> get data;
}

/// @nodoc
class __$$NotificationReadResponseImplCopyWithImpl<$Res>
    extends
        _$NotificationReadResponseCopyWithImpl<
          $Res,
          _$NotificationReadResponseImpl
        >
    implements _$$NotificationReadResponseImplCopyWith<$Res> {
  __$$NotificationReadResponseImplCopyWithImpl(
    _$NotificationReadResponseImpl _value,
    $Res Function(_$NotificationReadResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationReadResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = null}) {
    return _then(
      _$NotificationReadResponseImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        data:
            null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                    as NotificationReadItem,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationReadResponseImpl implements _NotificationReadResponse {
  const _$NotificationReadResponseImpl({
    @JsonKey(name: 'status') required this.status,
    @JsonKey(name: 'data') required this.data,
  });

  factory _$NotificationReadResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationReadResponseImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'data')
  final NotificationReadItem data;

  @override
  String toString() {
    return 'NotificationReadResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationReadResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of NotificationReadResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationReadResponseImplCopyWith<_$NotificationReadResponseImpl>
  get copyWith => __$$NotificationReadResponseImplCopyWithImpl<
    _$NotificationReadResponseImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationReadResponseImplToJson(this);
  }
}

abstract class _NotificationReadResponse implements NotificationReadResponse {
  const factory _NotificationReadResponse({
    @JsonKey(name: 'status') required final String status,
    @JsonKey(name: 'data') required final NotificationReadItem data,
  }) = _$NotificationReadResponseImpl;

  factory _NotificationReadResponse.fromJson(Map<String, dynamic> json) =
      _$NotificationReadResponseImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'data')
  NotificationReadItem get data;

  /// Create a copy of NotificationReadResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationReadResponseImplCopyWith<_$NotificationReadResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

NotificationReadItem _$NotificationReadItemFromJson(Map<String, dynamic> json) {
  return _NotificationReadItem.fromJson(json);
}

/// @nodoc
mixin _$NotificationReadItem {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'notificationId')
  int get notificationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'isRead')
  bool get isRead => throw _privateConstructorUsedError;
  @JsonKey(name: 'readAt')
  String get readAt => throw _privateConstructorUsedError;

  /// Serializes this NotificationReadItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationReadItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationReadItemCopyWith<NotificationReadItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationReadItemCopyWith<$Res> {
  factory $NotificationReadItemCopyWith(
    NotificationReadItem value,
    $Res Function(NotificationReadItem) then,
  ) = _$NotificationReadItemCopyWithImpl<$Res, NotificationReadItem>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'userId') int userId,
    @JsonKey(name: 'notificationId') int notificationId,
    @JsonKey(name: 'isRead') bool isRead,
    @JsonKey(name: 'readAt') String readAt,
  });
}

/// @nodoc
class _$NotificationReadItemCopyWithImpl<
  $Res,
  $Val extends NotificationReadItem
>
    implements $NotificationReadItemCopyWith<$Res> {
  _$NotificationReadItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationReadItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? notificationId = null,
    Object? isRead = null,
    Object? readAt = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as int,
            notificationId:
                null == notificationId
                    ? _value.notificationId
                    : notificationId // ignore: cast_nullable_to_non_nullable
                        as int,
            isRead:
                null == isRead
                    ? _value.isRead
                    : isRead // ignore: cast_nullable_to_non_nullable
                        as bool,
            readAt:
                null == readAt
                    ? _value.readAt
                    : readAt // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationReadItemImplCopyWith<$Res>
    implements $NotificationReadItemCopyWith<$Res> {
  factory _$$NotificationReadItemImplCopyWith(
    _$NotificationReadItemImpl value,
    $Res Function(_$NotificationReadItemImpl) then,
  ) = __$$NotificationReadItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'userId') int userId,
    @JsonKey(name: 'notificationId') int notificationId,
    @JsonKey(name: 'isRead') bool isRead,
    @JsonKey(name: 'readAt') String readAt,
  });
}

/// @nodoc
class __$$NotificationReadItemImplCopyWithImpl<$Res>
    extends _$NotificationReadItemCopyWithImpl<$Res, _$NotificationReadItemImpl>
    implements _$$NotificationReadItemImplCopyWith<$Res> {
  __$$NotificationReadItemImplCopyWithImpl(
    _$NotificationReadItemImpl _value,
    $Res Function(_$NotificationReadItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationReadItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? notificationId = null,
    Object? isRead = null,
    Object? readAt = null,
  }) {
    return _then(
      _$NotificationReadItemImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as int,
        notificationId:
            null == notificationId
                ? _value.notificationId
                : notificationId // ignore: cast_nullable_to_non_nullable
                    as int,
        isRead:
            null == isRead
                ? _value.isRead
                : isRead // ignore: cast_nullable_to_non_nullable
                    as bool,
        readAt:
            null == readAt
                ? _value.readAt
                : readAt // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationReadItemImpl implements _NotificationReadItem {
  const _$NotificationReadItemImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'userId') required this.userId,
    @JsonKey(name: 'notificationId') required this.notificationId,
    @JsonKey(name: 'isRead') required this.isRead,
    @JsonKey(name: 'readAt') required this.readAt,
  });

  factory _$NotificationReadItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationReadItemImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'userId')
  final int userId;
  @override
  @JsonKey(name: 'notificationId')
  final int notificationId;
  @override
  @JsonKey(name: 'isRead')
  final bool isRead;
  @override
  @JsonKey(name: 'readAt')
  final String readAt;

  @override
  String toString() {
    return 'NotificationReadItem(id: $id, userId: $userId, notificationId: $notificationId, isRead: $isRead, readAt: $readAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationReadItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.readAt, readAt) || other.readAt == readAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, notificationId, isRead, readAt);

  /// Create a copy of NotificationReadItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationReadItemImplCopyWith<_$NotificationReadItemImpl>
  get copyWith =>
      __$$NotificationReadItemImplCopyWithImpl<_$NotificationReadItemImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationReadItemImplToJson(this);
  }
}

abstract class _NotificationReadItem implements NotificationReadItem {
  const factory _NotificationReadItem({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'userId') required final int userId,
    @JsonKey(name: 'notificationId') required final int notificationId,
    @JsonKey(name: 'isRead') required final bool isRead,
    @JsonKey(name: 'readAt') required final String readAt,
  }) = _$NotificationReadItemImpl;

  factory _NotificationReadItem.fromJson(Map<String, dynamic> json) =
      _$NotificationReadItemImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'userId')
  int get userId;
  @override
  @JsonKey(name: 'notificationId')
  int get notificationId;
  @override
  @JsonKey(name: 'isRead')
  bool get isRead;
  @override
  @JsonKey(name: 'readAt')
  String get readAt;

  /// Create a copy of NotificationReadItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationReadItemImplCopyWith<_$NotificationReadItemImpl>
  get copyWith => throw _privateConstructorUsedError;
}
