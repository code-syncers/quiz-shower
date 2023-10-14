import 'package:flutter/foundation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_shower/data/model/quiz.dart';

part 'use_quiz_screen_state.freezed.dart';

@freezed
class QuizScreenState with _$QuizScreenState {
  const QuizScreenState._();

  const factory QuizScreenState({
    required List<Quiz> quizList,
    required int currentQuizNumber,
    required List<int> selectedOptions,
    required bool hasAnswered,
    required bool Function(int) getIsSelected,
    required void Function(int) changeSelected,
    required bool Function() showAnswer,
    required bool Function() checkAnswer,
  }) = _QuizScreenState;
}

QuizScreenState useQuizScreenState({
  required List<Quiz> quizList,
  required int currentQuizNumber,
  required List<int> selectedOptions,
}) {
  final currentQuizNumberState = useState(0);
  final selectedOptionsState = useState<List<int>>(selectedOptions);
  final hasAnsweredState = useState(false);

  bool getIsSelected(int index) {
    return selectedOptionsState.value.contains(index);
  }

  void changeSelected(int index) {
    selectedOptionsState.value = selectedOptionsState.value.contains(index)
        ? selectedOptionsState.value.where((i) => i != index).toList()
        : [...selectedOptionsState.value, index];
    selectedOptionsState.value.sort(((a, b) => a.compareTo(b)));
  }

  bool showAnswer() {
    return hasAnsweredState.value = true;
  }

  bool checkAnswer() {
    final currentQuiz = quizList[currentQuizNumberState.value];
    return listEquals(selectedOptionsState.value, currentQuiz.answers);
  }

  return QuizScreenState(
    quizList: quizList,
    currentQuizNumber: currentQuizNumberState.value,
    selectedOptions: selectedOptionsState.value,
    hasAnswered: hasAnsweredState.value,
    getIsSelected: getIsSelected,
    changeSelected: changeSelected,
    showAnswer: showAnswer,
    checkAnswer: checkAnswer,
  );
}
