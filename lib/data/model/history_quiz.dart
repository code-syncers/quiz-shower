import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_shower/data/model/firestore_datetime_convert.dart';

part 'history_quiz.freezed.dart';
part 'history_quiz.g.dart';

@freezed
class HistoryQuiz with _$HistoryQuiz {
  const HistoryQuiz._();

  const factory HistoryQuiz({
    required String quizId,
    required List<int> choices,
    required bool isCorrect,
    @FirestoreDateTimeConverter() required DateTime time,
  }) = _HistoryQuiz;

  factory HistoryQuiz.fromJson(Map<String, dynamic> json) =>
      _$HistoryQuizFromJson(json);

  static HistoryQuiz mock() {
    return HistoryQuiz(
      quizId: '1',
      time: DateTime.now(),
      choices: [1],
      isCorrect: true,
    );
  }
}
