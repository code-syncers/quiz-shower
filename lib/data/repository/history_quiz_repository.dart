import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quiz_shower/data/model/history_quiz.dart';

abstract class HistoryQuizRepository {
  Query<HistoryQuiz> historyQuizQuery(String historyId);

  Future<HistoryQuiz?> getHistoryQuiz(String quizId, String historyId);

  Future<void> createHistoryQuiz(HistoryQuiz historyQuiz, String historyId);

  Future<void> deleteHistoryQuiz(String quizId, String historyId);
}
