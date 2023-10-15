import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quiz_shower/data/model/user.dart';
import 'package:quiz_shower/data/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  static const String usersCollectionPath = 'users';

  final CollectionReference<User> usersRef =
      FirebaseFirestore.instance.collection(usersCollectionPath).withConverter(
            fromFirestore: (snapshot, _) => User.fromJson(snapshot.data()!),
            toFirestore: (user, _) => user.toJson(),
          );

  @override
  Future<User?> getUser(String uid) async {
    final snapshot = await usersRef.doc(uid).get();
    return snapshot.data();
  }

  @override
  Future<void> upsertUser(User user) async {
    await usersRef.doc(user.userId).set(user, SetOptions(merge: true));
  }

  @override
  Future<void> deleteUser(String uid) async {
    await usersRef.doc(uid).delete();
  }
}
