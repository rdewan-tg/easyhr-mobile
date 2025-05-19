// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$BlogState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<BlogModel> get blogs => throw _privateConstructorUsedError;
  BlogModel? get blog => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of BlogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlogStateCopyWith<BlogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogStateCopyWith<$Res> {
  factory $BlogStateCopyWith(BlogState value, $Res Function(BlogState) then) =
      _$BlogStateCopyWithImpl<$Res, BlogState>;
  @useResult
  $Res call({
    bool isLoading,
    List<BlogModel> blogs,
    BlogModel? blog,
    String? error,
  });

  $BlogModelCopyWith<$Res>? get blog;
}

/// @nodoc
class _$BlogStateCopyWithImpl<$Res, $Val extends BlogState>
    implements $BlogStateCopyWith<$Res> {
  _$BlogStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlogState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? blogs = null,
    Object? blog = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            isLoading:
                null == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            blogs:
                null == blogs
                    ? _value.blogs
                    : blogs // ignore: cast_nullable_to_non_nullable
                        as List<BlogModel>,
            blog:
                freezed == blog
                    ? _value.blog
                    : blog // ignore: cast_nullable_to_non_nullable
                        as BlogModel?,
            error:
                freezed == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of BlogState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlogModelCopyWith<$Res>? get blog {
    if (_value.blog == null) {
      return null;
    }

    return $BlogModelCopyWith<$Res>(_value.blog!, (value) {
      return _then(_value.copyWith(blog: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlogStateImplCopyWith<$Res>
    implements $BlogStateCopyWith<$Res> {
  factory _$$BlogStateImplCopyWith(
    _$BlogStateImpl value,
    $Res Function(_$BlogStateImpl) then,
  ) = __$$BlogStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    List<BlogModel> blogs,
    BlogModel? blog,
    String? error,
  });

  @override
  $BlogModelCopyWith<$Res>? get blog;
}

/// @nodoc
class __$$BlogStateImplCopyWithImpl<$Res>
    extends _$BlogStateCopyWithImpl<$Res, _$BlogStateImpl>
    implements _$$BlogStateImplCopyWith<$Res> {
  __$$BlogStateImplCopyWithImpl(
    _$BlogStateImpl _value,
    $Res Function(_$BlogStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BlogState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? blogs = null,
    Object? blog = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _$BlogStateImpl(
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        blogs:
            null == blogs
                ? _value._blogs
                : blogs // ignore: cast_nullable_to_non_nullable
                    as List<BlogModel>,
        blog:
            freezed == blog
                ? _value.blog
                : blog // ignore: cast_nullable_to_non_nullable
                    as BlogModel?,
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

class _$BlogStateImpl implements _BlogState {
  _$BlogStateImpl({
    this.isLoading = false,
    final List<BlogModel> blogs = const [],
    this.blog,
    this.error,
  }) : _blogs = blogs;

  @override
  @JsonKey()
  final bool isLoading;
  final List<BlogModel> _blogs;
  @override
  @JsonKey()
  List<BlogModel> get blogs {
    if (_blogs is EqualUnmodifiableListView) return _blogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blogs);
  }

  @override
  final BlogModel? blog;
  @override
  final String? error;

  @override
  String toString() {
    return 'BlogState(isLoading: $isLoading, blogs: $blogs, blog: $blog, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._blogs, _blogs) &&
            (identical(other.blog, blog) || other.blog == blog) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    const DeepCollectionEquality().hash(_blogs),
    blog,
    error,
  );

  /// Create a copy of BlogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogStateImplCopyWith<_$BlogStateImpl> get copyWith =>
      __$$BlogStateImplCopyWithImpl<_$BlogStateImpl>(this, _$identity);
}

abstract class _BlogState implements BlogState {
  factory _BlogState({
    final bool isLoading,
    final List<BlogModel> blogs,
    final BlogModel? blog,
    final String? error,
  }) = _$BlogStateImpl;

  @override
  bool get isLoading;
  @override
  List<BlogModel> get blogs;
  @override
  BlogModel? get blog;
  @override
  String? get error;

  /// Create a copy of BlogState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlogStateImplCopyWith<_$BlogStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
