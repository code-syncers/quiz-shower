import 'package:quiz_shower/data/model/history_quiz.dart';

abstract class HistoryQuizRepository {
  Future<HistoryQuiz?> getHistoryQuiz(String quizId);

  Future<void> createHistoryQuiz(HistoryQuiz historyQuiz);

  Future<void> deleteHistoryQuiz(String quizId);
}
