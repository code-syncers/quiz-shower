import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:quiz_shower/data/model/history_quiz.dart';
import 'package:quiz_shower/data/repository/history_quiz_repository.dart';

class HistoryQuizRepositoryImpl implements HistoryQuizRepository {
  static String historyQuizCollectionPath(String uid, String historyId) =>
      'users/$uid/histories/$historyId/historyQuizzes';

  static CollectionReference<HistoryQuiz> historyQuizzesRef(String historyId) =>
      FirebaseFirestore.instance
          .collection(historyQuizCollectionPath(
              FirebaseAuth.instance.currentUser!.uid, historyId))
          .withConverter(
            fromFirestore: (snapshot, _) =>
                HistoryQuiz.fromJson(snapshot.data()!),
            toFirestore: (historyQuiz, _) => historyQuiz.toJson(),
          );

  @override
  Future<HistoryQuiz?> getHistoryQuiz(String quizId, String historyId) async {
    final snapshot = await historyQuizzesRef(historyId).doc(quizId).get();
    return snapshot.data();
  }

  @override
  Future<void> createHistoryQuiz(
      HistoryQuiz historyQuiz, String historyId) async {
    await historyQuizzesRef(historyId)
        .doc(historyQuiz.quizId)
        .set(historyQuiz, SetOptions(merge: true));
  }

  @override
  Future<void> deleteHistoryQuiz(String quizId, String historyId) async {
    await historyQuizzesRef(historyId).doc(quizId).delete();
  }
}
