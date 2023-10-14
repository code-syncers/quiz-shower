import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quiz_shower/data/model/quiz.dart';

abstract class QuizRepository {
  Query<Quiz> quizQuery(String id);

  Future<Quiz?> getQuiz(String id);

  Future<void> createQuiz(Quiz quiz);

  Future<void> deleteQuiz(String id);
}
