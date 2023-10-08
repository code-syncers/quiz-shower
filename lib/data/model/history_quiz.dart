import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_quiz.freezed.dart';

@freezed
class HistoryQuiz with _$HistoryQuiz {
  const HistoryQuiz._();

  const factory HistoryQuiz({
    required String quizId,
    required DateTime time,
    required List<int> choices,
    required bool isCorrect,
  }) = _HistoryQuiz;

  static HistoryQuiz mock() {
    return HistoryQuiz(
      quizId: '1',
      time: DateTime.now(),
      choices: [1],
      isCorrect: true,
    );
  }
}
