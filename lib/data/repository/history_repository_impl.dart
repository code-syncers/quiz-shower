import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:quiz_shower/data/model/history.dart';
import 'package:quiz_shower/data/repository/history_repository.dart';

class HistoryRepositoryImpl implements HistoryRepository {
  static String historyCollectionPath(String uid) => 'users/$uid/histories';

  final CollectionReference<History> historiesRef = FirebaseFirestore.instance
      .collection(historyCollectionPath(FirebaseAuth.instance.currentUser!.uid))
      .withConverter(
        fromFirestore: (snapshot, _) => History.fromJson(snapshot.data()!),
        toFirestore: (history, _) => history.toJson(),
      );

  @override
  Future<History?> getHistory(String id) async {
    final snapshot = await historiesRef.doc(id).get();
    return snapshot.data();
  }

  @override
  Future<void> createHistory(History history) async {
    await historiesRef.doc(history.id).set(history, SetOptions(merge: true));
  }

  @override
  Future<void> deleteHistory(String id) async {
    await historiesRef.doc(id).delete();
  }
}
