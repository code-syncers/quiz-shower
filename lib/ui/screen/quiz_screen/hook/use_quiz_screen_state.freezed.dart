// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'use_quiz_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuizScreenState {
  List<Quiz> get quizList => throw _privateConstructorUsedError;
  int get currentQuizNumber => throw _privateConstructorUsedError;
  List<int> get selectedOptions => throw _privateConstructorUsedError;
  bool get hasAnswered => throw _privateConstructorUsedError;
  bool Function(int) get getIsSelected => throw _privateConstructorUsedError;
  void Function(int) get changeSelected => throw _privateConstructorUsedError;
  bool Function() get showAnswer => throw _privateConstructorUsedError;
  bool Function() get checkAnswer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizScreenStateCopyWith<QuizScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizScreenStateCopyWith<$Res> {
  factory $QuizScreenStateCopyWith(
          QuizScreenState value, $Res Function(QuizScreenState) then) =
      _$QuizScreenStateCopyWithImpl<$Res, QuizScreenState>;
  @useResult
  $Res call(
      {List<Quiz> quizList,
      int currentQuizNumber,
      List<int> selectedOptions,
      bool hasAnswered,
      bool Function(int) getIsSelected,
      void Function(int) changeSelected,
      bool Function() showAnswer,
      bool Function() checkAnswer});
}

/// @nodoc
class _$QuizScreenStateCopyWithImpl<$Res, $Val extends QuizScreenState>
    implements $QuizScreenStateCopyWith<$Res> {
  _$QuizScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizList = null,
    Object? currentQuizNumber = null,
    Object? selectedOptions = null,
    Object? hasAnswered = null,
    Object? getIsSelected = null,
    Object? changeSelected = null,
    Object? showAnswer = null,
    Object? checkAnswer = null,
  }) {
    return _then(_value.copyWith(
      quizList: null == quizList
          ? _value.quizList
          : quizList // ignore: cast_nullable_to_non_nullable
              as List<Quiz>,
      currentQuizNumber: null == currentQuizNumber
          ? _value.currentQuizNumber
          : currentQuizNumber // ignore: cast_nullable_to_non_nullable
              as int,
      selectedOptions: null == selectedOptions
          ? _value.selectedOptions
          : selectedOptions // ignore: cast_nullable_to_non_nullable
              as List<int>,
      hasAnswered: null == hasAnswered
          ? _value.hasAnswered
          : hasAnswered // ignore: cast_nullable_to_non_nullable
              as bool,
      getIsSelected: null == getIsSelected
          ? _value.getIsSelected
          : getIsSelected // ignore: cast_nullable_to_non_nullable
              as bool Function(int),
      changeSelected: null == changeSelected
          ? _value.changeSelected
          : changeSelected // ignore: cast_nullable_to_non_nullable
              as void Function(int),
      showAnswer: null == showAnswer
          ? _value.showAnswer
          : showAnswer // ignore: cast_nullable_to_non_nullable
              as bool Function(),
      checkAnswer: null == checkAnswer
          ? _value.checkAnswer
          : checkAnswer // ignore: cast_nullable_to_non_nullable
              as bool Function(),
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizScreenStateImplCopyWith<$Res>
    implements $QuizScreenStateCopyWith<$Res> {
  factory _$$QuizScreenStateImplCopyWith(_$QuizScreenStateImpl value,
          $Res Function(_$QuizScreenStateImpl) then) =
      __$$QuizScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Quiz> quizList,
      int currentQuizNumber,
      List<int> selectedOptions,
      bool hasAnswered,
      bool Function(int) getIsSelected,
      void Function(int) changeSelected,
      bool Function() showAnswer,
      bool Function() checkAnswer});
}

/// @nodoc
class __$$QuizScreenStateImplCopyWithImpl<$Res>
    extends _$QuizScreenStateCopyWithImpl<$Res, _$QuizScreenStateImpl>
    implements _$$QuizScreenStateImplCopyWith<$Res> {
  __$$QuizScreenStateImplCopyWithImpl(
      _$QuizScreenStateImpl _value, $Res Function(_$QuizScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizList = null,
    Object? currentQuizNumber = null,
    Object? selectedOptions = null,
    Object? hasAnswered = null,
    Object? getIsSelected = null,
    Object? changeSelected = null,
    Object? showAnswer = null,
    Object? checkAnswer = null,
  }) {
    return _then(_$QuizScreenStateImpl(
      quizList: null == quizList
          ? _value._quizList
          : quizList // ignore: cast_nullable_to_non_nullable
              as List<Quiz>,
      currentQuizNumber: null == currentQuizNumber
          ? _value.currentQuizNumber
          : currentQuizNumber // ignore: cast_nullable_to_non_nullable
              as int,
      selectedOptions: null == selectedOptions
          ? _value._selectedOptions
          : selectedOptions // ignore: cast_nullable_to_non_nullable
              as List<int>,
      hasAnswered: null == hasAnswered
          ? _value.hasAnswered
          : hasAnswered // ignore: cast_nullable_to_non_nullable
              as bool,
      getIsSelected: null == getIsSelected
          ? _value.getIsSelected
          : getIsSelected // ignore: cast_nullable_to_non_nullable
              as bool Function(int),
      changeSelected: null == changeSelected
          ? _value.changeSelected
          : changeSelected // ignore: cast_nullable_to_non_nullable
              as void Function(int),
      showAnswer: null == showAnswer
          ? _value.showAnswer
          : showAnswer // ignore: cast_nullable_to_non_nullable
              as bool Function(),
      checkAnswer: null == checkAnswer
          ? _value.checkAnswer
          : checkAnswer // ignore: cast_nullable_to_non_nullable
              as bool Function(),
    ));
  }
}

/// @nodoc

class _$QuizScreenStateImpl extends _QuizScreenState
    with DiagnosticableTreeMixin {
  const _$QuizScreenStateImpl(
      {required final List<Quiz> quizList,
      required this.currentQuizNumber,
      required final List<int> selectedOptions,
      required this.hasAnswered,
      required this.getIsSelected,
      required this.changeSelected,
      required this.showAnswer,
      required this.checkAnswer})
      : _quizList = quizList,
        _selectedOptions = selectedOptions,
        super._();

  final List<Quiz> _quizList;
  @override
  List<Quiz> get quizList {
    if (_quizList is EqualUnmodifiableListView) return _quizList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quizList);
  }

  @override
  final int currentQuizNumber;
  final List<int> _selectedOptions;
  @override
  List<int> get selectedOptions {
    if (_selectedOptions is EqualUnmodifiableListView) return _selectedOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedOptions);
  }

  @override
  final bool hasAnswered;
  @override
  final bool Function(int) getIsSelected;
  @override
  final void Function(int) changeSelected;
  @override
  final bool Function() showAnswer;
  @override
  final bool Function() checkAnswer;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizScreenState(quizList: $quizList, currentQuizNumber: $currentQuizNumber, selectedOptions: $selectedOptions, hasAnswered: $hasAnswered, getIsSelected: $getIsSelected, changeSelected: $changeSelected, showAnswer: $showAnswer, checkAnswer: $checkAnswer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuizScreenState'))
      ..add(DiagnosticsProperty('quizList', quizList))
      ..add(DiagnosticsProperty('currentQuizNumber', currentQuizNumber))
      ..add(DiagnosticsProperty('selectedOptions', selectedOptions))
      ..add(DiagnosticsProperty('hasAnswered', hasAnswered))
      ..add(DiagnosticsProperty('getIsSelected', getIsSelected))
      ..add(DiagnosticsProperty('changeSelected', changeSelected))
      ..add(DiagnosticsProperty('showAnswer', showAnswer))
      ..add(DiagnosticsProperty('checkAnswer', checkAnswer));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizScreenStateImpl &&
            const DeepCollectionEquality().equals(other._quizList, _quizList) &&
            (identical(other.currentQuizNumber, currentQuizNumber) ||
                other.currentQuizNumber == currentQuizNumber) &&
            const DeepCollectionEquality()
                .equals(other._selectedOptions, _selectedOptions) &&
            (identical(other.hasAnswered, hasAnswered) ||
                other.hasAnswered == hasAnswered) &&
            (identical(other.getIsSelected, getIsSelected) ||
                other.getIsSelected == getIsSelected) &&
            (identical(other.changeSelected, changeSelected) ||
                other.changeSelected == changeSelected) &&
            (identical(other.showAnswer, showAnswer) ||
                other.showAnswer == showAnswer) &&
            (identical(other.checkAnswer, checkAnswer) ||
                other.checkAnswer == checkAnswer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_quizList),
      currentQuizNumber,
      const DeepCollectionEquality().hash(_selectedOptions),
      hasAnswered,
      getIsSelected,
      changeSelected,
      showAnswer,
      checkAnswer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizScreenStateImplCopyWith<_$QuizScreenStateImpl> get copyWith =>
      __$$QuizScreenStateImplCopyWithImpl<_$QuizScreenStateImpl>(
          this, _$identity);
}

abstract class _QuizScreenState extends QuizScreenState {
  const factory _QuizScreenState(
      {required final List<Quiz> quizList,
      required final int currentQuizNumber,
      required final List<int> selectedOptions,
      required final bool hasAnswered,
      required final bool Function(int) getIsSelected,
      required final void Function(int) changeSelected,
      required final bool Function() showAnswer,
      required final bool Function() checkAnswer}) = _$QuizScreenStateImpl;
  const _QuizScreenState._() : super._();

  @override
  List<Quiz> get quizList;
  @override
  int get currentQuizNumber;
  @override
  List<int> get selectedOptions;
  @override
  bool get hasAnswered;
  @override
  bool Function(int) get getIsSelected;
  @override
  void Function(int) get changeSelected;
  @override
  bool Function() get showAnswer;
  @override
  bool Function() get checkAnswer;
  @override
  @JsonKey(ignore: true)
  _$$QuizScreenStateImplCopyWith<_$QuizScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
