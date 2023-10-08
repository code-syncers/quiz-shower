// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Quiz {
  String get id => throw _privateConstructorUsedError;
  String get articleId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get statement => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  List<String> get options => throw _privateConstructorUsedError;
  List<int> get answers => throw _privateConstructorUsedError;
  String get explanation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizCopyWith<Quiz> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizCopyWith<$Res> {
  factory $QuizCopyWith(Quiz value, $Res Function(Quiz) then) =
      _$QuizCopyWithImpl<$Res, Quiz>;
  @useResult
  $Res call(
      {String id,
      String articleId,
      String title,
      String statement,
      bool isFavorite,
      List<String> options,
      List<int> answers,
      String explanation});
}

/// @nodoc
class _$QuizCopyWithImpl<$Res, $Val extends Quiz>
    implements $QuizCopyWith<$Res> {
  _$QuizCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? articleId = null,
    Object? title = null,
    Object? statement = null,
    Object? isFavorite = null,
    Object? options = null,
    Object? answers = null,
    Object? explanation = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      articleId: null == articleId
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      statement: null == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<int>,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizImplCopyWith<$Res> implements $QuizCopyWith<$Res> {
  factory _$$QuizImplCopyWith(
          _$QuizImpl value, $Res Function(_$QuizImpl) then) =
      __$$QuizImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String articleId,
      String title,
      String statement,
      bool isFavorite,
      List<String> options,
      List<int> answers,
      String explanation});
}

/// @nodoc
class __$$QuizImplCopyWithImpl<$Res>
    extends _$QuizCopyWithImpl<$Res, _$QuizImpl>
    implements _$$QuizImplCopyWith<$Res> {
  __$$QuizImplCopyWithImpl(_$QuizImpl _value, $Res Function(_$QuizImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? articleId = null,
    Object? title = null,
    Object? statement = null,
    Object? isFavorite = null,
    Object? options = null,
    Object? answers = null,
    Object? explanation = null,
  }) {
    return _then(_$QuizImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      articleId: null == articleId
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      statement: null == statement
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<int>,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QuizImpl extends _Quiz {
  const _$QuizImpl(
      {required this.id,
      required this.articleId,
      required this.title,
      required this.statement,
      required this.isFavorite,
      required final List<String> options,
      required final List<int> answers,
      required this.explanation})
      : _options = options,
        _answers = answers,
        super._();

  @override
  final String id;
  @override
  final String articleId;
  @override
  final String title;
  @override
  final String statement;
  @override
  final bool isFavorite;
  final List<String> _options;
  @override
  List<String> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  final List<int> _answers;
  @override
  List<int> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  final String explanation;

  @override
  String toString() {
    return 'Quiz(id: $id, articleId: $articleId, title: $title, statement: $statement, isFavorite: $isFavorite, options: $options, answers: $answers, explanation: $explanation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.articleId, articleId) ||
                other.articleId == articleId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.statement, statement) ||
                other.statement == statement) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      articleId,
      title,
      statement,
      isFavorite,
      const DeepCollectionEquality().hash(_options),
      const DeepCollectionEquality().hash(_answers),
      explanation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizImplCopyWith<_$QuizImpl> get copyWith =>
      __$$QuizImplCopyWithImpl<_$QuizImpl>(this, _$identity);
}

abstract class _Quiz extends Quiz {
  const factory _Quiz(
      {required final String id,
      required final String articleId,
      required final String title,
      required final String statement,
      required final bool isFavorite,
      required final List<String> options,
      required final List<int> answers,
      required final String explanation}) = _$QuizImpl;
  const _Quiz._() : super._();

  @override
  String get id;
  @override
  String get articleId;
  @override
  String get title;
  @override
  String get statement;
  @override
  bool get isFavorite;
  @override
  List<String> get options;
  @override
  List<int> get answers;
  @override
  String get explanation;
  @override
  @JsonKey(ignore: true)
  _$$QuizImplCopyWith<_$QuizImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
