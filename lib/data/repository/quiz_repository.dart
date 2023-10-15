import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quiz_shower/data/model/quiz.dart';

abstract class QuizRepository {
  Query<Quiz> quizQuery(String articleId);

  Future<List<Quiz>> getQuizzes(String articleId);

  Future<Quiz?> getQuiz(String quizId, String articleId);

  Future<void> createQuiz(Quiz quiz);

  Future<void> deleteQuiz(String quizId, String articleId);
}
