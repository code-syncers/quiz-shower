// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Article {
  String get id => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isBookmarked => throw _privateConstructorUsedError;
  ArticleType get type => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<Quiz> get quizzes => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res, Article>;
  @useResult
  $Res call(
      {String id,
      String createdBy,
      DateTime createdAt,
      String title,
      String description,
      bool isBookmarked,
      ArticleType type,
      String? url,
      String content,
      List<Quiz> quizzes,
      bool isPublic});
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res, $Val extends Article>
    implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdBy = null,
    Object? createdAt = null,
    Object? title = null,
    Object? description = null,
    Object? isBookmarked = null,
    Object? type = null,
    Object? url = freezed,
    Object? content = null,
    Object? quizzes = null,
    Object? isPublic = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isBookmarked: null == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ArticleType,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      quizzes: null == quizzes
          ? _value.quizzes
          : quizzes // ignore: cast_nullable_to_non_nullable
              as List<Quiz>,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleImplCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$$ArticleImplCopyWith(
          _$ArticleImpl value, $Res Function(_$ArticleImpl) then) =
      __$$ArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String createdBy,
      DateTime createdAt,
      String title,
      String description,
      bool isBookmarked,
      ArticleType type,
      String? url,
      String content,
      List<Quiz> quizzes,
      bool isPublic});
}

/// @nodoc
class __$$ArticleImplCopyWithImpl<$Res>
    extends _$ArticleCopyWithImpl<$Res, _$ArticleImpl>
    implements _$$ArticleImplCopyWith<$Res> {
  __$$ArticleImplCopyWithImpl(
      _$ArticleImpl _value, $Res Function(_$ArticleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdBy = null,
    Object? createdAt = null,
    Object? title = null,
    Object? description = null,
    Object? isBookmarked = null,
    Object? type = null,
    Object? url = freezed,
    Object? content = null,
    Object? quizzes = null,
    Object? isPublic = null,
  }) {
    return _then(_$ArticleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isBookmarked: null == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ArticleType,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      quizzes: null == quizzes
          ? _value._quizzes
          : quizzes // ignore: cast_nullable_to_non_nullable
              as List<Quiz>,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ArticleImpl extends _Article {
  const _$ArticleImpl(
      {required this.id,
      required this.createdBy,
      required this.createdAt,
      required this.title,
      required this.description,
      required this.isBookmarked,
      required this.type,
      required this.url,
      required this.content,
      required final List<Quiz> quizzes,
      this.isPublic = false})
      : _quizzes = quizzes,
        super._();

  @override
  final String id;
  @override
  final String createdBy;
  @override
  final DateTime createdAt;
  @override
  final String title;
  @override
  final String description;
  @override
  final bool isBookmarked;
  @override
  final ArticleType type;
  @override
  final String? url;
  @override
  final String content;
  final List<Quiz> _quizzes;
  @override
  List<Quiz> get quizzes {
    if (_quizzes is EqualUnmodifiableListView) return _quizzes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quizzes);
  }

  @override
  @JsonKey()
  final bool isPublic;

  @override
  String toString() {
    return 'Article(id: $id, createdBy: $createdBy, createdAt: $createdAt, title: $title, description: $description, isBookmarked: $isBookmarked, type: $type, url: $url, content: $content, quizzes: $quizzes, isPublic: $isPublic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isBookmarked, isBookmarked) ||
                other.isBookmarked == isBookmarked) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._quizzes, _quizzes) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdBy,
      createdAt,
      title,
      description,
      isBookmarked,
      type,
      url,
      content,
      const DeepCollectionEquality().hash(_quizzes),
      isPublic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      __$$ArticleImplCopyWithImpl<_$ArticleImpl>(this, _$identity);
}

abstract class _Article extends Article {
  const factory _Article(
      {required final String id,
      required final String createdBy,
      required final DateTime createdAt,
      required final String title,
      required final String description,
      required final bool isBookmarked,
      required final ArticleType type,
      required final String? url,
      required final String content,
      required final List<Quiz> quizzes,
      final bool isPublic}) = _$ArticleImpl;
  const _Article._() : super._();

  @override
  String get id;
  @override
  String get createdBy;
  @override
  DateTime get createdAt;
  @override
  String get title;
  @override
  String get description;
  @override
  bool get isBookmarked;
  @override
  ArticleType get type;
  @override
  String? get url;
  @override
  String get content;
  @override
  List<Quiz> get quizzes;
  @override
  bool get isPublic;
  @override
  @JsonKey(ignore: true)
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
