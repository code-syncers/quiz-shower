import 'package:quiz_shower/data/repository/quiz_repository.dart';
import 'package:quiz_shower/data/repository/quiz_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quiz_repository_provider.g.dart';

@riverpod
QuizRepository quizRepository(QuizRepositoryRef ref) {
  return QuizRepositoryImpl();
}
