// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_me_firebase_token_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetMeFirebaseTokenRequest _$SetMeFirebaseTokenRequestFromJson(
    Map<String, dynamic> json) {
  return _SetMeFirebaseTokenRequest.fromJson(json);
}

/// @nodoc
mixin _$SetMeFirebaseTokenRequest {
  String get deviceToken => throw _privateConstructorUsedError;

  /// Serializes this SetMeFirebaseTokenRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SetMeFirebaseTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SetMeFirebaseTokenRequestCopyWith<SetMeFirebaseTokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetMeFirebaseTokenRequestCopyWith<$Res> {
  factory $SetMeFirebaseTokenRequestCopyWith(SetMeFirebaseTokenRequest value,
          $Res Function(SetMeFirebaseTokenRequest) then) =
      _$SetMeFirebaseTokenRequestCopyWithImpl<$Res, SetMeFirebaseTokenRequest>;
  @useResult
  $Res call({String deviceToken});
}

/// @nodoc
class _$SetMeFirebaseTokenRequestCopyWithImpl<$Res,
        $Val extends SetMeFirebaseTokenRequest>
    implements $SetMeFirebaseTokenRequestCopyWith<$Res> {
  _$SetMeFirebaseTokenRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetMeFirebaseTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceToken = null,
  }) {
    return _then(_value.copyWith(
      deviceToken: null == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetMeFirebaseTokenRequestImplCopyWith<$Res>
    implements $SetMeFirebaseTokenRequestCopyWith<$Res> {
  factory _$$SetMeFirebaseTokenRequestImplCopyWith(
          _$SetMeFirebaseTokenRequestImpl value,
          $Res Function(_$SetMeFirebaseTokenRequestImpl) then) =
      __$$SetMeFirebaseTokenRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String deviceToken});
}

/// @nodoc
class __$$SetMeFirebaseTokenRequestImplCopyWithImpl<$Res>
    extends _$SetMeFirebaseTokenRequestCopyWithImpl<$Res,
        _$SetMeFirebaseTokenRequestImpl>
    implements _$$SetMeFirebaseTokenRequestImplCopyWith<$Res> {
  __$$SetMeFirebaseTokenRequestImplCopyWithImpl(
      _$SetMeFirebaseTokenRequestImpl _value,
      $Res Function(_$SetMeFirebaseTokenRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetMeFirebaseTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceToken = null,
  }) {
    return _then(_$SetMeFirebaseTokenRequestImpl(
      deviceToken: null == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetMeFirebaseTokenRequestImpl implements _SetMeFirebaseTokenRequest {
  _$SetMeFirebaseTokenRequestImpl({required this.deviceToken});

  factory _$SetMeFirebaseTokenRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetMeFirebaseTokenRequestImplFromJson(json);

  @override
  final String deviceToken;

  @override
  String toString() {
    return 'SetMeFirebaseTokenRequest(deviceToken: $deviceToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetMeFirebaseTokenRequestImpl &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deviceToken);

  /// Create a copy of SetMeFirebaseTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetMeFirebaseTokenRequestImplCopyWith<_$SetMeFirebaseTokenRequestImpl>
      get copyWith => __$$SetMeFirebaseTokenRequestImplCopyWithImpl<
          _$SetMeFirebaseTokenRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetMeFirebaseTokenRequestImplToJson(
      this,
    );
  }
}

abstract class _SetMeFirebaseTokenRequest implements SetMeFirebaseTokenRequest {
  factory _SetMeFirebaseTokenRequest({required final String deviceToken}) =
      _$SetMeFirebaseTokenRequestImpl;

  factory _SetMeFirebaseTokenRequest.fromJson(Map<String, dynamic> json) =
      _$SetMeFirebaseTokenRequestImpl.fromJson;

  @override
  String get deviceToken;

  /// Create a copy of SetMeFirebaseTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetMeFirebaseTokenRequestImplCopyWith<_$SetMeFirebaseTokenRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
