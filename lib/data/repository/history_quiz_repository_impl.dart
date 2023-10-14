import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quiz_shower/data/model/history_quiz.dart';
import 'package:quiz_shower/data/repository/history_quiz_repository.dart';

class HistoryQuizRepositoryImpl implements HistoryQuizRepository {
  static const String historyQuizCollectionPath = 'historyQuizzes';

  final CollectionReference<HistoryQuiz> historyQuizzesRef = FirebaseFirestore
      .instance
      .collection(historyQuizCollectionPath)
      .withConverter(
        fromFirestore: (snapshot, _) => HistoryQuiz.fromJson(snapshot.data()!),
        toFirestore: (historyQuiz, _) => historyQuiz.toJson(),
      );

  @override
  Future<HistoryQuiz?> getHistoryQuiz(String quizId) async {
    final snapshot = await historyQuizzesRef.doc(quizId).get();
    return snapshot.data();
  }

  @override
  Future<void> createHistoryQuiz(HistoryQuiz historyQuiz) async {
    await historyQuizzesRef
        .doc(historyQuiz.quizId)
        .set(historyQuiz, SetOptions(merge: true));
  }

  @override
  Future<void> deleteHistoryQuiz(String quizId) async {
    await historyQuizzesRef.doc(quizId).delete();
  }
}
