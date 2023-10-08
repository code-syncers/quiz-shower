// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_quiz.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryQuiz {
  String get quizId => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;
  List<int> get choices => throw _privateConstructorUsedError;
  bool get isCorrect => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryQuizCopyWith<HistoryQuiz> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryQuizCopyWith<$Res> {
  factory $HistoryQuizCopyWith(
          HistoryQuiz value, $Res Function(HistoryQuiz) then) =
      _$HistoryQuizCopyWithImpl<$Res, HistoryQuiz>;
  @useResult
  $Res call({String quizId, DateTime time, List<int> choices, bool isCorrect});
}

/// @nodoc
class _$HistoryQuizCopyWithImpl<$Res, $Val extends HistoryQuiz>
    implements $HistoryQuizCopyWith<$Res> {
  _$HistoryQuizCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizId = null,
    Object? time = null,
    Object? choices = null,
    Object? isCorrect = null,
  }) {
    return _then(_value.copyWith(
      quizId: null == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryQuizImplCopyWith<$Res>
    implements $HistoryQuizCopyWith<$Res> {
  factory _$$HistoryQuizImplCopyWith(
          _$HistoryQuizImpl value, $Res Function(_$HistoryQuizImpl) then) =
      __$$HistoryQuizImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String quizId, DateTime time, List<int> choices, bool isCorrect});
}

/// @nodoc
class __$$HistoryQuizImplCopyWithImpl<$Res>
    extends _$HistoryQuizCopyWithImpl<$Res, _$HistoryQuizImpl>
    implements _$$HistoryQuizImplCopyWith<$Res> {
  __$$HistoryQuizImplCopyWithImpl(
      _$HistoryQuizImpl _value, $Res Function(_$HistoryQuizImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizId = null,
    Object? time = null,
    Object? choices = null,
    Object? isCorrect = null,
  }) {
    return _then(_$HistoryQuizImpl(
      quizId: null == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      choices: null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HistoryQuizImpl extends _HistoryQuiz {
  const _$HistoryQuizImpl(
      {required this.quizId,
      required this.time,
      required final List<int> choices,
      required this.isCorrect})
      : _choices = choices,
        super._();

  @override
  final String quizId;
  @override
  final DateTime time;
  final List<int> _choices;
  @override
  List<int> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  final bool isCorrect;

  @override
  String toString() {
    return 'HistoryQuiz(quizId: $quizId, time: $time, choices: $choices, isCorrect: $isCorrect)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryQuizImpl &&
            (identical(other.quizId, quizId) || other.quizId == quizId) &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quizId, time,
      const DeepCollectionEquality().hash(_choices), isCorrect);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryQuizImplCopyWith<_$HistoryQuizImpl> get copyWith =>
      __$$HistoryQuizImplCopyWithImpl<_$HistoryQuizImpl>(this, _$identity);
}

abstract class _HistoryQuiz extends HistoryQuiz {
  const factory _HistoryQuiz(
      {required final String quizId,
      required final DateTime time,
      required final List<int> choices,
      required final bool isCorrect}) = _$HistoryQuizImpl;
  const _HistoryQuiz._() : super._();

  @override
  String get quizId;
  @override
  DateTime get time;
  @override
  List<int> get choices;
  @override
  bool get isCorrect;
  @override
  @JsonKey(ignore: true)
  _$$HistoryQuizImplCopyWith<_$HistoryQuizImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
