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
    required bool Function(int) getIsSelected,
    required void Function(int) changeSelected,
    required bool Function() checkAnswer,
    required void Function() goToNextQuiz,
  }) = _QuizScreenState;
}

QuizScreenState useQuizScreenState({
  required List<Quiz> quizList,
  required int currentQuizNumber,
  required List<int> selectedOptions,
}) {
  final currentQuizNumberState = useState(0);
  final selectedOptionsState = useState<List<int>>(selectedOptions);

  bool getIsSelected(int index) {
    return selectedOptionsState.value.contains(index);
  }

  void changeSelected(int index) {
    selectedOptionsState.value = selectedOptionsState.value.contains(index)
        ? selectedOptionsState.value.where((i) => i != index).toList()
        : [...selectedOptionsState.value, index];
    selectedOptionsState.value.sort(((a, b) => a.compareTo(b)));
  }

  bool checkAnswer() {
    final currentQuiz = quizList[currentQuizNumberState.value];
    return listEquals(selectedOptionsState.value, currentQuiz.answers);
  }

  void goToNextQuiz() {
    if (currentQuizNumberState.value < quizList.length - 1) {
      currentQuizNumberState.value++;
      selectedOptionsState.value = [];
    }
  }

  return QuizScreenState(
    quizList: quizList,
    currentQuizNumber: currentQuizNumberState.value,
    selectedOptions: selectedOptionsState.value,
    getIsSelected: getIsSelected,
    changeSelected: changeSelected,
    checkAnswer: checkAnswer,
    goToNextQuiz: goToNextQuiz,
  );
}
