import 'package:quiz_shower/data/model/user.dart';

abstract class UserRepository {
  Future<User?> getUser(String uid);

  Future<void> upsertUser(User user);

  Future<void> deleteUser(String uid);
}
