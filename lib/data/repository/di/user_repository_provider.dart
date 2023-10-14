import 'package:quiz_shower/data/repository/user_repository.dart';
import 'package:quiz_shower/data/repository/user_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_repository_provider.g.dart';

@riverpod
UserRepository userRepository(UserRepositoryRef ref) {
  return UserRepositoryImpl();
}
