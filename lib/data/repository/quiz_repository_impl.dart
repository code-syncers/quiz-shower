import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quiz_shower/data/model/quiz.dart';
import 'package:quiz_shower/data/repository/quiz_repository.dart';

class QuizRepositoryImpl implements QuizRepository {
  static String quizzesCollectionPath(String articleId) =>
      'articles/$articleId/quizzes';

  static CollectionReference<Quiz> quizzesRef(String articleId) =>
      FirebaseFirestore.instance
          .collection(quizzesCollectionPath(articleId))
          .withConverter(
            fromFirestore: (snapshot, _) => Quiz.fromJson(snapshot.data()!),
            toFirestore: (quiz, _) => quiz.toJson(),
          );

  @override
  Query<Quiz> quizQuery(String articleId) {
    return quizzesRef(articleId);
  }

  @override
  Future<List<Quiz>> getQuizzes(String articleId) async {
    final snapshot = await quizzesRef(articleId).get();
    return snapshot.docs.map((doc) => doc.data()).toList();
  }

  @override
  Future<Quiz?> getQuiz(String id, String articleId) async {
    final snapshot = await quizzesRef(articleId).doc(id).get();
    return snapshot.data();
  }

  @override
  Future<void> createQuiz(Quiz quiz) async {
    await quizzesRef(quiz.articleId)
        .doc(quiz.id)
        .set(quiz, SetOptions(merge: true));
  }

  @override
  Future<void> deleteQuiz(String quizId, String articleId) async {
    await quizzesRef(articleId).doc(quizId).delete();
  }
}
