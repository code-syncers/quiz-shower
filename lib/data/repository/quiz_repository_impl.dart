import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quiz_shower/data/model/quiz.dart';
import 'package:quiz_shower/data/repository/quiz_repository.dart';

class QuizRepositoryImpl implements QuizRepository {
  static const String quizzesCollectionPath = 'quizzes';

  final CollectionReference<Quiz> quizzesRef = FirebaseFirestore.instance
      .collection(quizzesCollectionPath)
      .withConverter(
        fromFirestore: (snapshot, _) => Quiz.fromJson(snapshot.data()!),
        toFirestore: (quiz, _) => quiz.toJson(),
      );

  @override
  Query<Quiz> quizQuery(String articleId) {
    return quizzesRef.where('articleId', isEqualTo: articleId);
  }

  @override
  Future<Quiz?> getQuiz(String id) async {
    final snapshot = await quizzesRef.doc(id).get();
    return snapshot.data();
  }

  @override
  Future<void> createQuiz(Quiz quiz) async {
    await quizzesRef.doc(quiz.id).set(quiz, SetOptions(merge: true));
  }

  @override
  Future<void> deleteQuiz(String id) async {
    await quizzesRef.doc(id).delete();
  }
}
