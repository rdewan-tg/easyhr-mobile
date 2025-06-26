// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BlogResponse _$BlogResponseFromJson(Map<String, dynamic> json) {
  return _BlogResponse.fromJson(json);
}

/// @nodoc
mixin _$BlogResponse {
  String get status => throw _privateConstructorUsedError;
  BlogResponseData get data => throw _privateConstructorUsedError;

  /// Serializes this BlogResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlogResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlogResponseCopyWith<BlogResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogResponseCopyWith<$Res> {
  factory $BlogResponseCopyWith(
    BlogResponse value,
    $Res Function(BlogResponse) then,
  ) = _$BlogResponseCopyWithImpl<$Res, BlogResponse>;
  @useResult
  $Res call({String status, BlogResponseData data});

  $BlogResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$BlogResponseCopyWithImpl<$Res, $Val extends BlogResponse>
    implements $BlogResponseCopyWith<$Res> {
  _$BlogResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlogResponse
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
                      as BlogResponseData,
          )
          as $Val,
    );
  }

  /// Create a copy of BlogResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlogResponseDataCopyWith<$Res> get data {
    return $BlogResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlogResponseImplCopyWith<$Res>
    implements $BlogResponseCopyWith<$Res> {
  factory _$$BlogResponseImplCopyWith(
    _$BlogResponseImpl value,
    $Res Function(_$BlogResponseImpl) then,
  ) = __$$BlogResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, BlogResponseData data});

  @override
  $BlogResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$BlogResponseImplCopyWithImpl<$Res>
    extends _$BlogResponseCopyWithImpl<$Res, _$BlogResponseImpl>
    implements _$$BlogResponseImplCopyWith<$Res> {
  __$$BlogResponseImplCopyWithImpl(
    _$BlogResponseImpl _value,
    $Res Function(_$BlogResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BlogResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? data = null}) {
    return _then(
      _$BlogResponseImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as BlogResponseData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BlogResponseImpl implements _BlogResponse {
  _$BlogResponseImpl({required this.status, required this.data});

  factory _$BlogResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlogResponseImplFromJson(json);

  @override
  final String status;
  @override
  final BlogResponseData data;

  @override
  String toString() {
    return 'BlogResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of BlogResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogResponseImplCopyWith<_$BlogResponseImpl> get copyWith =>
      __$$BlogResponseImplCopyWithImpl<_$BlogResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlogResponseImplToJson(this);
  }
}

abstract class _BlogResponse implements BlogResponse {
  factory _BlogResponse({
    required final String status,
    required final BlogResponseData data,
  }) = _$BlogResponseImpl;

  factory _BlogResponse.fromJson(Map<String, dynamic> json) =
      _$BlogResponseImpl.fromJson;

  @override
  String get status;
  @override
  BlogResponseData get data;

  /// Create a copy of BlogResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlogResponseImplCopyWith<_$BlogResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BlogResponseData _$BlogResponseDataFromJson(Map<String, dynamic> json) {
  return _BlogResponseData.fromJson(json);
}

/// @nodoc
mixin _$BlogResponseData {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "imageUrl")
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "isActive")
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this BlogResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlogResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlogResponseDataCopyWith<BlogResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogResponseDataCopyWith<$Res> {
  factory $BlogResponseDataCopyWith(
    BlogResponseData value,
    $Res Function(BlogResponseData) then,
  ) = _$BlogResponseDataCopyWithImpl<$Res, BlogResponseData>;
  @useResult
  $Res call({
    @JsonKey(name: "id") int id,
    @JsonKey(name: "title") String title,
    @JsonKey(name: "content") String content,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "imageUrl") String? imageUrl,
    @JsonKey(name: "isActive") bool isActive,
    @JsonKey(name: "createdAt") String createdAt,
    @JsonKey(name: "updatedAt") String updatedAt,
  });
}

/// @nodoc
class _$BlogResponseDataCopyWithImpl<$Res, $Val extends BlogResponseData>
    implements $BlogResponseDataCopyWith<$Res> {
  _$BlogResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlogResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? image = freezed,
    Object? imageUrl = freezed,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
            image: freezed == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                      as String?,
            imageUrl: freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BlogResponseDataImplCopyWith<$Res>
    implements $BlogResponseDataCopyWith<$Res> {
  factory _$$BlogResponseDataImplCopyWith(
    _$BlogResponseDataImpl value,
    $Res Function(_$BlogResponseDataImpl) then,
  ) = __$$BlogResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "id") int id,
    @JsonKey(name: "title") String title,
    @JsonKey(name: "content") String content,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "imageUrl") String? imageUrl,
    @JsonKey(name: "isActive") bool isActive,
    @JsonKey(name: "createdAt") String createdAt,
    @JsonKey(name: "updatedAt") String updatedAt,
  });
}

/// @nodoc
class __$$BlogResponseDataImplCopyWithImpl<$Res>
    extends _$BlogResponseDataCopyWithImpl<$Res, _$BlogResponseDataImpl>
    implements _$$BlogResponseDataImplCopyWith<$Res> {
  __$$BlogResponseDataImplCopyWithImpl(
    _$BlogResponseDataImpl _value,
    $Res Function(_$BlogResponseDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BlogResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? image = freezed,
    Object? imageUrl = freezed,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$BlogResponseDataImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
        image: freezed == image
            ? _value.image
            : image // ignore: cast_nullable_to_non_nullable
                  as String?,
        imageUrl: freezed == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BlogResponseDataImpl implements _BlogResponseData {
  const _$BlogResponseDataImpl({
    @JsonKey(name: "id") required this.id,
    @JsonKey(name: "title") required this.title,
    @JsonKey(name: "content") required this.content,
    @JsonKey(name: "image") this.image,
    @JsonKey(name: "imageUrl") this.imageUrl,
    @JsonKey(name: "isActive") required this.isActive,
    @JsonKey(name: "createdAt") required this.createdAt,
    @JsonKey(name: "updatedAt") required this.updatedAt,
  });

  factory _$BlogResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlogResponseDataImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "content")
  final String content;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "imageUrl")
  final String? imageUrl;
  @override
  @JsonKey(name: "isActive")
  final bool isActive;
  @override
  @JsonKey(name: "createdAt")
  final String createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final String updatedAt;

  @override
  String toString() {
    return 'BlogResponseData(id: $id, title: $title, content: $content, image: $image, imageUrl: $imageUrl, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogResponseDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    content,
    image,
    imageUrl,
    isActive,
    createdAt,
    updatedAt,
  );

  /// Create a copy of BlogResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogResponseDataImplCopyWith<_$BlogResponseDataImpl> get copyWith =>
      __$$BlogResponseDataImplCopyWithImpl<_$BlogResponseDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BlogResponseDataImplToJson(this);
  }
}

abstract class _BlogResponseData implements BlogResponseData {
  const factory _BlogResponseData({
    @JsonKey(name: "id") required final int id,
    @JsonKey(name: "title") required final String title,
    @JsonKey(name: "content") required final String content,
    @JsonKey(name: "image") final String? image,
    @JsonKey(name: "imageUrl") final String? imageUrl,
    @JsonKey(name: "isActive") required final bool isActive,
    @JsonKey(name: "createdAt") required final String createdAt,
    @JsonKey(name: "updatedAt") required final String updatedAt,
  }) = _$BlogResponseDataImpl;

  factory _BlogResponseData.fromJson(Map<String, dynamic> json) =
      _$BlogResponseDataImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "content")
  String get content;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "imageUrl")
  String? get imageUrl;
  @override
  @JsonKey(name: "isActive")
  bool get isActive;
  @override
  @JsonKey(name: "createdAt")
  String get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  String get updatedAt;

  /// Create a copy of BlogResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlogResponseDataImplCopyWith<_$BlogResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
