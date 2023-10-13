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
  bool Function(int) get getIsSelected => throw _privateConstructorUsedError;
  void Function(int) get changeSelected => throw _privateConstructorUsedError;
  bool Function() get checkAnswer => throw _privateConstructorUsedError;
  void Function() get goToNextQuiz => throw _privateConstructorUsedError;

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
      bool Function(int) getIsSelected,
      void Function(int) changeSelected,
      bool Function() checkAnswer,
      void Function() goToNextQuiz});
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
    Object? getIsSelected = null,
    Object? changeSelected = null,
    Object? checkAnswer = null,
    Object? goToNextQuiz = null,
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
      getIsSelected: null == getIsSelected
          ? _value.getIsSelected
          : getIsSelected // ignore: cast_nullable_to_non_nullable
              as bool Function(int),
      changeSelected: null == changeSelected
          ? _value.changeSelected
          : changeSelected // ignore: cast_nullable_to_non_nullable
              as void Function(int),
      checkAnswer: null == checkAnswer
          ? _value.checkAnswer
          : checkAnswer // ignore: cast_nullable_to_non_nullable
              as bool Function(),
      goToNextQuiz: null == goToNextQuiz
          ? _value.goToNextQuiz
          : goToNextQuiz // ignore: cast_nullable_to_non_nullable
              as void Function(),
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
      bool Function(int) getIsSelected,
      void Function(int) changeSelected,
      bool Function() checkAnswer,
      void Function() goToNextQuiz});
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
    Object? getIsSelected = null,
    Object? changeSelected = null,
    Object? checkAnswer = null,
    Object? goToNextQuiz = null,
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
      getIsSelected: null == getIsSelected
          ? _value.getIsSelected
          : getIsSelected // ignore: cast_nullable_to_non_nullable
              as bool Function(int),
      changeSelected: null == changeSelected
          ? _value.changeSelected
          : changeSelected // ignore: cast_nullable_to_non_nullable
              as void Function(int),
      checkAnswer: null == checkAnswer
          ? _value.checkAnswer
          : checkAnswer // ignore: cast_nullable_to_non_nullable
              as bool Function(),
      goToNextQuiz: null == goToNextQuiz
          ? _value.goToNextQuiz
          : goToNextQuiz // ignore: cast_nullable_to_non_nullable
              as void Function(),
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
      required this.getIsSelected,
      required this.changeSelected,
      required this.checkAnswer,
      required this.goToNextQuiz})
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
  final bool Function(int) getIsSelected;
  @override
  final void Function(int) changeSelected;
  @override
  final bool Function() checkAnswer;
  @override
  final void Function() goToNextQuiz;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuizScreenState(quizList: $quizList, currentQuizNumber: $currentQuizNumber, selectedOptions: $selectedOptions, getIsSelected: $getIsSelected, changeSelected: $changeSelected, checkAnswer: $checkAnswer, goToNextQuiz: $goToNextQuiz)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuizScreenState'))
      ..add(DiagnosticsProperty('quizList', quizList))
      ..add(DiagnosticsProperty('currentQuizNumber', currentQuizNumber))
      ..add(DiagnosticsProperty('selectedOptions', selectedOptions))
      ..add(DiagnosticsProperty('getIsSelected', getIsSelected))
      ..add(DiagnosticsProperty('changeSelected', changeSelected))
      ..add(DiagnosticsProperty('checkAnswer', checkAnswer))
      ..add(DiagnosticsProperty('goToNextQuiz', goToNextQuiz));
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
            (identical(other.getIsSelected, getIsSelected) ||
                other.getIsSelected == getIsSelected) &&
            (identical(other.changeSelected, changeSelected) ||
                other.changeSelected == changeSelected) &&
            (identical(other.checkAnswer, checkAnswer) ||
                other.checkAnswer == checkAnswer) &&
            (identical(other.goToNextQuiz, goToNextQuiz) ||
                other.goToNextQuiz == goToNextQuiz));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_quizList),
      currentQuizNumber,
      const DeepCollectionEquality().hash(_selectedOptions),
      getIsSelected,
      changeSelected,
      checkAnswer,
      goToNextQuiz);

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
      required final bool Function(int) getIsSelected,
      required final void Function(int) changeSelected,
      required final bool Function() checkAnswer,
      required final void Function() goToNextQuiz}) = _$QuizScreenStateImpl;
  const _QuizScreenState._() : super._();

  @override
  List<Quiz> get quizList;
  @override
  int get currentQuizNumber;
  @override
  List<int> get selectedOptions;
  @override
  bool Function(int) get getIsSelected;
  @override
  void Function(int) get changeSelected;
  @override
  bool Function() get checkAnswer;
  @override
  void Function() get goToNextQuiz;
  @override
  @JsonKey(ignore: true)
  _$$QuizScreenStateImplCopyWith<_$QuizScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
