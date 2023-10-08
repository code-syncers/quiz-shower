import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_shower/data/model/history_quiz.dart';

part 'history.freezed.dart';

@freezed
class History with _$History {
  const History._();

  const factory History({
    required String id,
    required String articleId,
    required String? taisenId,
    required List<HistoryQuiz> historyQuizzes,
    @Default(false) bool isTaisen,
    @Default(false) bool isPublic,
  }) = _History;

  static History mock() {
    return History(
      id: '1',
      articleId: '1',
      taisenId: null,
      historyQuizzes: [HistoryQuiz.mock(), HistoryQuiz.mock()],
      isTaisen: false,
      isPublic: true,
    );
  }
}
