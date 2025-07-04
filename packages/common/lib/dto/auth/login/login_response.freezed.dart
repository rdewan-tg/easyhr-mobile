// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return _LoginResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginResponse {
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  Data get data => throw _privateConstructorUsedError;

  /// Serializes this LoginResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginResponseCopyWith<LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseCopyWith<$Res> {
  factory $LoginResponseCopyWith(
    LoginResponse value,
    $Res Function(LoginResponse) then,
  ) = _$LoginResponseCopyWithImpl<$Res, LoginResponse>;
  @useResult
  $Res call({
    @JsonKey(name: "status") String status,
    @JsonKey(name: "data") Data data,
  });

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$LoginResponseCopyWithImpl<$Res, $Val extends LoginResponse>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginResponse
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
                      as Data,
          )
          as $Val,
    );
  }

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginResponseImplCopyWith<$Res>
    implements $LoginResponseCopyWith<$Res> {
  factory _$$LoginResponseImplCopyWith(
    _$LoginResponseImpl value,
    $Res Function(_$LoginResponseImpl) then,
  ) = __$$LoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "status") String status,
    @JsonKey(name: "data") Data data,
  });

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoginResponseImplCopyWithImpl<$Res>
    extends _$LoginResponseCopyWithImpl<$Res, _$LoginResponseImpl>
    implements _$$LoginResponseImplCopyWith<$Res> {
  __$$LoginResponseImplCopyWithImpl(
    _$LoginResponseImpl _value,
    $Res Function(_$LoginResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = null}) {
    return _then(
      _$LoginResponseImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as Data,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseImpl implements _LoginResponse {
  const _$LoginResponseImpl({
    @JsonKey(name: "status") required this.status,
    @JsonKey(name: "data") required this.data,
  });

  factory _$LoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "data")
  final Data data;

  @override
  String toString() {
    return 'LoginResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseImplCopyWith<_$LoginResponseImpl> get copyWith =>
      __$$LoginResponseImplCopyWithImpl<_$LoginResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseImplToJson(this);
  }
}

abstract class _LoginResponse implements LoginResponse {
  const factory _LoginResponse({
    @JsonKey(name: "status") required final String status,
    @JsonKey(name: "data") required final Data data,
  }) = _$LoginResponseImpl;

  factory _LoginResponse.fromJson(Map<String, dynamic> json) =
      _$LoginResponseImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "data")
  Data get data;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginResponseImplCopyWith<_$LoginResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "token")
  TokenDto get token => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  UserDto get user => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({
    @JsonKey(name: "token") TokenDto token,
    @JsonKey(name: "user") UserDto user,
  });

  $TokenDtoCopyWith<$Res> get token;
  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? token = null, Object? user = null}) {
    return _then(
      _value.copyWith(
            token: null == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                      as TokenDto,
            user: null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as UserDto,
          )
          as $Val,
    );
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenDtoCopyWith<$Res> get token {
    return $TokenDtoCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value) as $Val);
    });
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
    _$DataImpl value,
    $Res Function(_$DataImpl) then,
  ) = __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "token") TokenDto token,
    @JsonKey(name: "user") UserDto user,
  });

  @override
  $TokenDtoCopyWith<$Res> get token;
  @override
  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
    : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? token = null, Object? user = null}) {
    return _then(
      _$DataImpl(
        token: null == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as TokenDto,
        user: null == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as UserDto,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl({
    @JsonKey(name: "token") required this.token,
    @JsonKey(name: "user") required this.user,
  });

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "token")
  final TokenDto token;
  @override
  @JsonKey(name: "user")
  final UserDto user;

  @override
  String toString() {
    return 'Data(token: $token, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, user);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(this);
  }
}

abstract class _Data implements Data {
  const factory _Data({
    @JsonKey(name: "token") required final TokenDto token,
    @JsonKey(name: "user") required final UserDto user,
  }) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "token")
  TokenDto get token;
  @override
  @JsonKey(name: "user")
  UserDto get user;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TokenDto _$TokenDtoFromJson(Map<String, dynamic> json) {
  return _TokenDto.fromJson(json);
}

/// @nodoc
mixin _$TokenDto {
  @JsonKey(name: "access_token")
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "refresh_token")
  String get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this TokenDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenDtoCopyWith<TokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenDtoCopyWith<$Res> {
  factory $TokenDtoCopyWith(TokenDto value, $Res Function(TokenDto) then) =
      _$TokenDtoCopyWithImpl<$Res, TokenDto>;
  @useResult
  $Res call({
    @JsonKey(name: "access_token") String accessToken,
    @JsonKey(name: "refresh_token") String refreshToken,
  });
}

/// @nodoc
class _$TokenDtoCopyWithImpl<$Res, $Val extends TokenDto>
    implements $TokenDtoCopyWith<$Res> {
  _$TokenDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? accessToken = null, Object? refreshToken = null}) {
    return _then(
      _value.copyWith(
            accessToken: null == accessToken
                ? _value.accessToken
                : accessToken // ignore: cast_nullable_to_non_nullable
                      as String,
            refreshToken: null == refreshToken
                ? _value.refreshToken
                : refreshToken // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TokenDtoImplCopyWith<$Res>
    implements $TokenDtoCopyWith<$Res> {
  factory _$$TokenDtoImplCopyWith(
    _$TokenDtoImpl value,
    $Res Function(_$TokenDtoImpl) then,
  ) = __$$TokenDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "access_token") String accessToken,
    @JsonKey(name: "refresh_token") String refreshToken,
  });
}

/// @nodoc
class __$$TokenDtoImplCopyWithImpl<$Res>
    extends _$TokenDtoCopyWithImpl<$Res, _$TokenDtoImpl>
    implements _$$TokenDtoImplCopyWith<$Res> {
  __$$TokenDtoImplCopyWithImpl(
    _$TokenDtoImpl _value,
    $Res Function(_$TokenDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TokenDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? accessToken = null, Object? refreshToken = null}) {
    return _then(
      _$TokenDtoImpl(
        accessToken: null == accessToken
            ? _value.accessToken
            : accessToken // ignore: cast_nullable_to_non_nullable
                  as String,
        refreshToken: null == refreshToken
            ? _value.refreshToken
            : refreshToken // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenDtoImpl implements _TokenDto {
  const _$TokenDtoImpl({
    @JsonKey(name: "access_token") required this.accessToken,
    @JsonKey(name: "refresh_token") required this.refreshToken,
  });

  factory _$TokenDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenDtoImplFromJson(json);

  @override
  @JsonKey(name: "access_token")
  final String accessToken;
  @override
  @JsonKey(name: "refresh_token")
  final String refreshToken;

  @override
  String toString() {
    return 'TokenDto(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenDtoImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  /// Create a copy of TokenDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenDtoImplCopyWith<_$TokenDtoImpl> get copyWith =>
      __$$TokenDtoImplCopyWithImpl<_$TokenDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenDtoImplToJson(this);
  }
}

abstract class _TokenDto implements TokenDto {
  const factory _TokenDto({
    @JsonKey(name: "access_token") required final String accessToken,
    @JsonKey(name: "refresh_token") required final String refreshToken,
  }) = _$TokenDtoImpl;

  factory _TokenDto.fromJson(Map<String, dynamic> json) =
      _$TokenDtoImpl.fromJson;

  @override
  @JsonKey(name: "access_token")
  String get accessToken;
  @override
  @JsonKey(name: "refresh_token")
  String get refreshToken;

  /// Create a copy of TokenDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenDtoImplCopyWith<_$TokenDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
mixin _$UserDto {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "phoneNumber")
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar")
  String? get photo => throw _privateConstructorUsedError;
  @JsonKey(name: "isActive")
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  String? get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  List<RoleDto> get role => throw _privateConstructorUsedError;
  @JsonKey(name: "company")
  CompanyDto get company => throw _privateConstructorUsedError;

  /// Serializes this UserDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res, UserDto>;
  @useResult
  $Res call({
    @JsonKey(name: "id") int id,
    @JsonKey(name: "name") String name,
    @JsonKey(name: "email") String email,
    @JsonKey(name: "phoneNumber") String? phoneNumber,
    @JsonKey(name: "avatar") String? photo,
    @JsonKey(name: "isActive") bool isActive,
    @JsonKey(name: "uuid") String? uuid,
    @JsonKey(name: "role") List<RoleDto> role,
    @JsonKey(name: "company") CompanyDto company,
  });

  $CompanyDtoCopyWith<$Res> get company;
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res, $Val extends UserDto>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? phoneNumber = freezed,
    Object? photo = freezed,
    Object? isActive = null,
    Object? uuid = freezed,
    Object? role = null,
    Object? company = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            phoneNumber: freezed == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            photo: freezed == photo
                ? _value.photo
                : photo // ignore: cast_nullable_to_non_nullable
                      as String?,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            uuid: freezed == uuid
                ? _value.uuid
                : uuid // ignore: cast_nullable_to_non_nullable
                      as String?,
            role: null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as List<RoleDto>,
            company: null == company
                ? _value.company
                : company // ignore: cast_nullable_to_non_nullable
                      as CompanyDto,
          )
          as $Val,
    );
  }

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompanyDtoCopyWith<$Res> get company {
    return $CompanyDtoCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserDtoImplCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$$UserDtoImplCopyWith(
    _$UserDtoImpl value,
    $Res Function(_$UserDtoImpl) then,
  ) = __$$UserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "id") int id,
    @JsonKey(name: "name") String name,
    @JsonKey(name: "email") String email,
    @JsonKey(name: "phoneNumber") String? phoneNumber,
    @JsonKey(name: "avatar") String? photo,
    @JsonKey(name: "isActive") bool isActive,
    @JsonKey(name: "uuid") String? uuid,
    @JsonKey(name: "role") List<RoleDto> role,
    @JsonKey(name: "company") CompanyDto company,
  });

  @override
  $CompanyDtoCopyWith<$Res> get company;
}

/// @nodoc
class __$$UserDtoImplCopyWithImpl<$Res>
    extends _$UserDtoCopyWithImpl<$Res, _$UserDtoImpl>
    implements _$$UserDtoImplCopyWith<$Res> {
  __$$UserDtoImplCopyWithImpl(
    _$UserDtoImpl _value,
    $Res Function(_$UserDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? phoneNumber = freezed,
    Object? photo = freezed,
    Object? isActive = null,
    Object? uuid = freezed,
    Object? role = null,
    Object? company = null,
  }) {
    return _then(
      _$UserDtoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        phoneNumber: freezed == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        photo: freezed == photo
            ? _value.photo
            : photo // ignore: cast_nullable_to_non_nullable
                  as String?,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        uuid: freezed == uuid
            ? _value.uuid
            : uuid // ignore: cast_nullable_to_non_nullable
                  as String?,
        role: null == role
            ? _value._role
            : role // ignore: cast_nullable_to_non_nullable
                  as List<RoleDto>,
        company: null == company
            ? _value.company
            : company // ignore: cast_nullable_to_non_nullable
                  as CompanyDto,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDtoImpl implements _UserDto {
  const _$UserDtoImpl({
    @JsonKey(name: "id") required this.id,
    @JsonKey(name: "name") required this.name,
    @JsonKey(name: "email") required this.email,
    @JsonKey(name: "phoneNumber") this.phoneNumber,
    @JsonKey(name: "avatar") this.photo,
    @JsonKey(name: "isActive") required this.isActive,
    @JsonKey(name: "uuid") this.uuid,
    @JsonKey(name: "role") required final List<RoleDto> role,
    @JsonKey(name: "company") required this.company,
  }) : _role = role;

  factory _$UserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDtoImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "phoneNumber")
  final String? phoneNumber;
  @override
  @JsonKey(name: "avatar")
  final String? photo;
  @override
  @JsonKey(name: "isActive")
  final bool isActive;
  @override
  @JsonKey(name: "uuid")
  final String? uuid;
  final List<RoleDto> _role;
  @override
  @JsonKey(name: "role")
  List<RoleDto> get role {
    if (_role is EqualUnmodifiableListView) return _role;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_role);
  }

  @override
  @JsonKey(name: "company")
  final CompanyDto company;

  @override
  String toString() {
    return 'UserDto(id: $id, name: $name, email: $email, phoneNumber: $phoneNumber, photo: $photo, isActive: $isActive, uuid: $uuid, role: $role, company: $company)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            const DeepCollectionEquality().equals(other._role, _role) &&
            (identical(other.company, company) || other.company == company));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    email,
    phoneNumber,
    photo,
    isActive,
    uuid,
    const DeepCollectionEquality().hash(_role),
    company,
  );

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      __$$UserDtoImplCopyWithImpl<_$UserDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDtoImplToJson(this);
  }
}

abstract class _UserDto implements UserDto {
  const factory _UserDto({
    @JsonKey(name: "id") required final int id,
    @JsonKey(name: "name") required final String name,
    @JsonKey(name: "email") required final String email,
    @JsonKey(name: "phoneNumber") final String? phoneNumber,
    @JsonKey(name: "avatar") final String? photo,
    @JsonKey(name: "isActive") required final bool isActive,
    @JsonKey(name: "uuid") final String? uuid,
    @JsonKey(name: "role") required final List<RoleDto> role,
    @JsonKey(name: "company") required final CompanyDto company,
  }) = _$UserDtoImpl;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$UserDtoImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "phoneNumber")
  String? get phoneNumber;
  @override
  @JsonKey(name: "avatar")
  String? get photo;
  @override
  @JsonKey(name: "isActive")
  bool get isActive;
  @override
  @JsonKey(name: "uuid")
  String? get uuid;
  @override
  @JsonKey(name: "role")
  List<RoleDto> get role;
  @override
  @JsonKey(name: "company")
  CompanyDto get company;

  /// Create a copy of UserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoleDto _$RoleDtoFromJson(Map<String, dynamic> json) {
  return _RoleDto.fromJson(json);
}

/// @nodoc
mixin _$RoleDto {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  UserRole get name => throw _privateConstructorUsedError;

  /// Serializes this RoleDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoleDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoleDtoCopyWith<RoleDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleDtoCopyWith<$Res> {
  factory $RoleDtoCopyWith(RoleDto value, $Res Function(RoleDto) then) =
      _$RoleDtoCopyWithImpl<$Res, RoleDto>;
  @useResult
  $Res call({
    @JsonKey(name: "id") int id,
    @JsonKey(name: "name") UserRole name,
  });
}

/// @nodoc
class _$RoleDtoCopyWithImpl<$Res, $Val extends RoleDto>
    implements $RoleDtoCopyWith<$Res> {
  _$RoleDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoleDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as UserRole,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RoleDtoImplCopyWith<$Res> implements $RoleDtoCopyWith<$Res> {
  factory _$$RoleDtoImplCopyWith(
    _$RoleDtoImpl value,
    $Res Function(_$RoleDtoImpl) then,
  ) = __$$RoleDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "id") int id,
    @JsonKey(name: "name") UserRole name,
  });
}

/// @nodoc
class __$$RoleDtoImplCopyWithImpl<$Res>
    extends _$RoleDtoCopyWithImpl<$Res, _$RoleDtoImpl>
    implements _$$RoleDtoImplCopyWith<$Res> {
  __$$RoleDtoImplCopyWithImpl(
    _$RoleDtoImpl _value,
    $Res Function(_$RoleDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RoleDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _$RoleDtoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as UserRole,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RoleDtoImpl implements _RoleDto {
  const _$RoleDtoImpl({
    @JsonKey(name: "id") required this.id,
    @JsonKey(name: "name") required this.name,
  });

  factory _$RoleDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleDtoImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final UserRole name;

  @override
  String toString() {
    return 'RoleDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of RoleDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleDtoImplCopyWith<_$RoleDtoImpl> get copyWith =>
      __$$RoleDtoImplCopyWithImpl<_$RoleDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoleDtoImplToJson(this);
  }
}

abstract class _RoleDto implements RoleDto {
  const factory _RoleDto({
    @JsonKey(name: "id") required final int id,
    @JsonKey(name: "name") required final UserRole name,
  }) = _$RoleDtoImpl;

  factory _RoleDto.fromJson(Map<String, dynamic> json) = _$RoleDtoImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  UserRole get name;

  /// Create a copy of RoleDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoleDtoImplCopyWith<_$RoleDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompanyDto _$CompanyDtoFromJson(Map<String, dynamic> json) {
  return _CompanyDto.fromJson(json);
}

/// @nodoc
mixin _$CompanyDto {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "companyCode")
  String? get companyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "countryCode")
  String? get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: "gpsRadius")
  int get gpsRadius => throw _privateConstructorUsedError;
  @JsonKey(name: "timeZone")
  String get timeZone => throw _privateConstructorUsedError;
  @JsonKey(name: "isZoneEnabled")
  bool get isZoneEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: "isCameraEnabled")
  bool get isCameraEnabled => throw _privateConstructorUsedError;

  /// Serializes this CompanyDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompanyDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompanyDtoCopyWith<CompanyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyDtoCopyWith<$Res> {
  factory $CompanyDtoCopyWith(
    CompanyDto value,
    $Res Function(CompanyDto) then,
  ) = _$CompanyDtoCopyWithImpl<$Res, CompanyDto>;
  @useResult
  $Res call({
    @JsonKey(name: "id") int id,
    @JsonKey(name: "name") String name,
    @JsonKey(name: "companyCode") String? companyCode,
    @JsonKey(name: "countryCode") String? countryCode,
    @JsonKey(name: "gpsRadius") int gpsRadius,
    @JsonKey(name: "timeZone") String timeZone,
    @JsonKey(name: "isZoneEnabled") bool isZoneEnabled,
    @JsonKey(name: "isCameraEnabled") bool isCameraEnabled,
  });
}

/// @nodoc
class _$CompanyDtoCopyWithImpl<$Res, $Val extends CompanyDto>
    implements $CompanyDtoCopyWith<$Res> {
  _$CompanyDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompanyDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? companyCode = freezed,
    Object? countryCode = freezed,
    Object? gpsRadius = null,
    Object? timeZone = null,
    Object? isZoneEnabled = null,
    Object? isCameraEnabled = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            companyCode: freezed == companyCode
                ? _value.companyCode
                : companyCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            countryCode: freezed == countryCode
                ? _value.countryCode
                : countryCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            gpsRadius: null == gpsRadius
                ? _value.gpsRadius
                : gpsRadius // ignore: cast_nullable_to_non_nullable
                      as int,
            timeZone: null == timeZone
                ? _value.timeZone
                : timeZone // ignore: cast_nullable_to_non_nullable
                      as String,
            isZoneEnabled: null == isZoneEnabled
                ? _value.isZoneEnabled
                : isZoneEnabled // ignore: cast_nullable_to_non_nullable
                      as bool,
            isCameraEnabled: null == isCameraEnabled
                ? _value.isCameraEnabled
                : isCameraEnabled // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CompanyDtoImplCopyWith<$Res>
    implements $CompanyDtoCopyWith<$Res> {
  factory _$$CompanyDtoImplCopyWith(
    _$CompanyDtoImpl value,
    $Res Function(_$CompanyDtoImpl) then,
  ) = __$$CompanyDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "id") int id,
    @JsonKey(name: "name") String name,
    @JsonKey(name: "companyCode") String? companyCode,
    @JsonKey(name: "countryCode") String? countryCode,
    @JsonKey(name: "gpsRadius") int gpsRadius,
    @JsonKey(name: "timeZone") String timeZone,
    @JsonKey(name: "isZoneEnabled") bool isZoneEnabled,
    @JsonKey(name: "isCameraEnabled") bool isCameraEnabled,
  });
}

/// @nodoc
class __$$CompanyDtoImplCopyWithImpl<$Res>
    extends _$CompanyDtoCopyWithImpl<$Res, _$CompanyDtoImpl>
    implements _$$CompanyDtoImplCopyWith<$Res> {
  __$$CompanyDtoImplCopyWithImpl(
    _$CompanyDtoImpl _value,
    $Res Function(_$CompanyDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CompanyDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? companyCode = freezed,
    Object? countryCode = freezed,
    Object? gpsRadius = null,
    Object? timeZone = null,
    Object? isZoneEnabled = null,
    Object? isCameraEnabled = null,
  }) {
    return _then(
      _$CompanyDtoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        companyCode: freezed == companyCode
            ? _value.companyCode
            : companyCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        countryCode: freezed == countryCode
            ? _value.countryCode
            : countryCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        gpsRadius: null == gpsRadius
            ? _value.gpsRadius
            : gpsRadius // ignore: cast_nullable_to_non_nullable
                  as int,
        timeZone: null == timeZone
            ? _value.timeZone
            : timeZone // ignore: cast_nullable_to_non_nullable
                  as String,
        isZoneEnabled: null == isZoneEnabled
            ? _value.isZoneEnabled
            : isZoneEnabled // ignore: cast_nullable_to_non_nullable
                  as bool,
        isCameraEnabled: null == isCameraEnabled
            ? _value.isCameraEnabled
            : isCameraEnabled // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyDtoImpl implements _CompanyDto {
  const _$CompanyDtoImpl({
    @JsonKey(name: "id") required this.id,
    @JsonKey(name: "name") required this.name,
    @JsonKey(name: "companyCode") this.companyCode,
    @JsonKey(name: "countryCode") this.countryCode,
    @JsonKey(name: "gpsRadius") required this.gpsRadius,
    @JsonKey(name: "timeZone") required this.timeZone,
    @JsonKey(name: "isZoneEnabled") required this.isZoneEnabled,
    @JsonKey(name: "isCameraEnabled") required this.isCameraEnabled,
  });

  factory _$CompanyDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyDtoImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "companyCode")
  final String? companyCode;
  @override
  @JsonKey(name: "countryCode")
  final String? countryCode;
  @override
  @JsonKey(name: "gpsRadius")
  final int gpsRadius;
  @override
  @JsonKey(name: "timeZone")
  final String timeZone;
  @override
  @JsonKey(name: "isZoneEnabled")
  final bool isZoneEnabled;
  @override
  @JsonKey(name: "isCameraEnabled")
  final bool isCameraEnabled;

  @override
  String toString() {
    return 'CompanyDto(id: $id, name: $name, companyCode: $companyCode, countryCode: $countryCode, gpsRadius: $gpsRadius, timeZone: $timeZone, isZoneEnabled: $isZoneEnabled, isCameraEnabled: $isCameraEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.companyCode, companyCode) ||
                other.companyCode == companyCode) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.gpsRadius, gpsRadius) ||
                other.gpsRadius == gpsRadius) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone) &&
            (identical(other.isZoneEnabled, isZoneEnabled) ||
                other.isZoneEnabled == isZoneEnabled) &&
            (identical(other.isCameraEnabled, isCameraEnabled) ||
                other.isCameraEnabled == isCameraEnabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    companyCode,
    countryCode,
    gpsRadius,
    timeZone,
    isZoneEnabled,
    isCameraEnabled,
  );

  /// Create a copy of CompanyDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyDtoImplCopyWith<_$CompanyDtoImpl> get copyWith =>
      __$$CompanyDtoImplCopyWithImpl<_$CompanyDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyDtoImplToJson(this);
  }
}

abstract class _CompanyDto implements CompanyDto {
  const factory _CompanyDto({
    @JsonKey(name: "id") required final int id,
    @JsonKey(name: "name") required final String name,
    @JsonKey(name: "companyCode") final String? companyCode,
    @JsonKey(name: "countryCode") final String? countryCode,
    @JsonKey(name: "gpsRadius") required final int gpsRadius,
    @JsonKey(name: "timeZone") required final String timeZone,
    @JsonKey(name: "isZoneEnabled") required final bool isZoneEnabled,
    @JsonKey(name: "isCameraEnabled") required final bool isCameraEnabled,
  }) = _$CompanyDtoImpl;

  factory _CompanyDto.fromJson(Map<String, dynamic> json) =
      _$CompanyDtoImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "companyCode")
  String? get companyCode;
  @override
  @JsonKey(name: "countryCode")
  String? get countryCode;
  @override
  @JsonKey(name: "gpsRadius")
  int get gpsRadius;
  @override
  @JsonKey(name: "timeZone")
  String get timeZone;
  @override
  @JsonKey(name: "isZoneEnabled")
  bool get isZoneEnabled;
  @override
  @JsonKey(name: "isCameraEnabled")
  bool get isCameraEnabled;

  /// Create a copy of CompanyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompanyDtoImplCopyWith<_$CompanyDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceSettingDto _$DeviceSettingDtoFromJson(Map<String, dynamic> json) {
  return _DeviceSettingDto.fromJson(json);
}

/// @nodoc
mixin _$DeviceSettingDto {
  @JsonKey(name: "deviceId")
  String? get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: "salesPersonCode")
  String? get salesPersonCode => throw _privateConstructorUsedError;
  @JsonKey(name: "orderNumberFormat")
  String? get orderNumberFormat => throw _privateConstructorUsedError;

  /// Serializes this DeviceSettingDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeviceSettingDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceSettingDtoCopyWith<DeviceSettingDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceSettingDtoCopyWith<$Res> {
  factory $DeviceSettingDtoCopyWith(
    DeviceSettingDto value,
    $Res Function(DeviceSettingDto) then,
  ) = _$DeviceSettingDtoCopyWithImpl<$Res, DeviceSettingDto>;
  @useResult
  $Res call({
    @JsonKey(name: "deviceId") String? deviceId,
    @JsonKey(name: "salesPersonCode") String? salesPersonCode,
    @JsonKey(name: "orderNumberFormat") String? orderNumberFormat,
  });
}

/// @nodoc
class _$DeviceSettingDtoCopyWithImpl<$Res, $Val extends DeviceSettingDto>
    implements $DeviceSettingDtoCopyWith<$Res> {
  _$DeviceSettingDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceSettingDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = freezed,
    Object? salesPersonCode = freezed,
    Object? orderNumberFormat = freezed,
  }) {
    return _then(
      _value.copyWith(
            deviceId: freezed == deviceId
                ? _value.deviceId
                : deviceId // ignore: cast_nullable_to_non_nullable
                      as String?,
            salesPersonCode: freezed == salesPersonCode
                ? _value.salesPersonCode
                : salesPersonCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            orderNumberFormat: freezed == orderNumberFormat
                ? _value.orderNumberFormat
                : orderNumberFormat // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeviceSettingDtoImplCopyWith<$Res>
    implements $DeviceSettingDtoCopyWith<$Res> {
  factory _$$DeviceSettingDtoImplCopyWith(
    _$DeviceSettingDtoImpl value,
    $Res Function(_$DeviceSettingDtoImpl) then,
  ) = __$$DeviceSettingDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "deviceId") String? deviceId,
    @JsonKey(name: "salesPersonCode") String? salesPersonCode,
    @JsonKey(name: "orderNumberFormat") String? orderNumberFormat,
  });
}

/// @nodoc
class __$$DeviceSettingDtoImplCopyWithImpl<$Res>
    extends _$DeviceSettingDtoCopyWithImpl<$Res, _$DeviceSettingDtoImpl>
    implements _$$DeviceSettingDtoImplCopyWith<$Res> {
  __$$DeviceSettingDtoImplCopyWithImpl(
    _$DeviceSettingDtoImpl _value,
    $Res Function(_$DeviceSettingDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeviceSettingDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = freezed,
    Object? salesPersonCode = freezed,
    Object? orderNumberFormat = freezed,
  }) {
    return _then(
      _$DeviceSettingDtoImpl(
        deviceId: freezed == deviceId
            ? _value.deviceId
            : deviceId // ignore: cast_nullable_to_non_nullable
                  as String?,
        salesPersonCode: freezed == salesPersonCode
            ? _value.salesPersonCode
            : salesPersonCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        orderNumberFormat: freezed == orderNumberFormat
            ? _value.orderNumberFormat
            : orderNumberFormat // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceSettingDtoImpl implements _DeviceSettingDto {
  const _$DeviceSettingDtoImpl({
    @JsonKey(name: "deviceId") this.deviceId,
    @JsonKey(name: "salesPersonCode") this.salesPersonCode,
    @JsonKey(name: "orderNumberFormat") this.orderNumberFormat,
  });

  factory _$DeviceSettingDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceSettingDtoImplFromJson(json);

  @override
  @JsonKey(name: "deviceId")
  final String? deviceId;
  @override
  @JsonKey(name: "salesPersonCode")
  final String? salesPersonCode;
  @override
  @JsonKey(name: "orderNumberFormat")
  final String? orderNumberFormat;

  @override
  String toString() {
    return 'DeviceSettingDto(deviceId: $deviceId, salesPersonCode: $salesPersonCode, orderNumberFormat: $orderNumberFormat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceSettingDtoImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.salesPersonCode, salesPersonCode) ||
                other.salesPersonCode == salesPersonCode) &&
            (identical(other.orderNumberFormat, orderNumberFormat) ||
                other.orderNumberFormat == orderNumberFormat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, deviceId, salesPersonCode, orderNumberFormat);

  /// Create a copy of DeviceSettingDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceSettingDtoImplCopyWith<_$DeviceSettingDtoImpl> get copyWith =>
      __$$DeviceSettingDtoImplCopyWithImpl<_$DeviceSettingDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceSettingDtoImplToJson(this);
  }
}

abstract class _DeviceSettingDto implements DeviceSettingDto {
  const factory _DeviceSettingDto({
    @JsonKey(name: "deviceId") final String? deviceId,
    @JsonKey(name: "salesPersonCode") final String? salesPersonCode,
    @JsonKey(name: "orderNumberFormat") final String? orderNumberFormat,
  }) = _$DeviceSettingDtoImpl;

  factory _DeviceSettingDto.fromJson(Map<String, dynamic> json) =
      _$DeviceSettingDtoImpl.fromJson;

  @override
  @JsonKey(name: "deviceId")
  String? get deviceId;
  @override
  @JsonKey(name: "salesPersonCode")
  String? get salesPersonCode;
  @override
  @JsonKey(name: "orderNumberFormat")
  String? get orderNumberFormat;

  /// Create a copy of DeviceSettingDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceSettingDtoImplCopyWith<_$DeviceSettingDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
