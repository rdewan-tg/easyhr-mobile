// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blogs_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BlogsResponse _$BlogsResponseFromJson(Map<String, dynamic> json) {
  return _BlogsResponse.fromJson(json);
}

/// @nodoc
mixin _$BlogsResponse {
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<BlogResponseData> get data => throw _privateConstructorUsedError;

  /// Serializes this BlogsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlogsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlogsResponseCopyWith<BlogsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogsResponseCopyWith<$Res> {
  factory $BlogsResponseCopyWith(
    BlogsResponse value,
    $Res Function(BlogsResponse) then,
  ) = _$BlogsResponseCopyWithImpl<$Res, BlogsResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "status") String status,
    @JsonKey(name: "data") List<BlogResponseData> data,
  });
}

/// @nodoc
class _$BlogsResponseCopyWithImpl<$Res, $Val extends BlogsResponse>
    implements $BlogsResponseCopyWith<$Res> {
  _$BlogsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlogsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = null}) {
    return _then(
      _value.copyWith(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                as String,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                as List<BlogResponseData>,
      ) as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BlogsResponseImplCopyWith<$Res>
    implements $BlogsResponseCopyWith<$Res> {
  factory _$$BlogsResponseImplCopyWith(
    _$BlogsResponseImpl value,
    $Res Function(_$BlogsResponseImpl) then,
  ) = __$$BlogsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "status") String status,
    @JsonKey(name: "data") List<BlogResponseData> data,
  });
}

/// @nodoc
class __$$BlogsResponseImplCopyWithImpl<$Res>
    extends _$BlogsResponseCopyWithImpl<$Res, _$BlogsResponseImpl>
    implements _$$BlogsResponseImplCopyWith<$Res> {
  __$$BlogsResponseImplCopyWithImpl(
    _$BlogsResponseImpl _value,
    $Res Function(_$BlogsResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BlogsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = null}) {
    return _then(
      _$BlogsResponseImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                as String,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                as List<BlogResponseData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BlogsResponseImpl implements _BlogsResponse {
  _$BlogsResponseImpl({
    @JsonKey(name: "status") required this.status,
    @JsonKey(name: "data") final List<BlogResponseData> data = const [],
  }) : _data = data;

  factory _$BlogsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlogsResponseImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String status;
  final List<BlogResponseData> _data;
  @override
  @JsonKey(name: "data")
  List<BlogResponseData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BlogsResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogsResponseImpl &&
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

  /// Create a copy of BlogsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogsResponseImplCopyWith<_$BlogsResponseImpl> get copyWith =>
      __$$BlogsResponseImplCopyWithImpl<_$BlogsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlogsResponseImplToJson(this);
  }
}

abstract class _BlogsResponse implements BlogsResponse {
  factory _BlogsResponse({
    @JsonKey(name: "status") required final String status,
    @JsonKey(name: "data") final List<BlogResponseData> data,
  }) = _$BlogsResponseImpl;

  factory _BlogsResponse.fromJson(Map<String, dynamic> json) =
      _$BlogsResponseImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "data")
  List<BlogResponseData> get data;

  /// Create a copy of BlogsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlogsResponseImplCopyWith<_$BlogsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
