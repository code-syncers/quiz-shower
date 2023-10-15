import 'package:quiz_shower/data/repository/history_quiz_repository.dart';
import 'package:quiz_shower/data/repository/history_quiz_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'history_quiz_repository_provider.g.dart';

@riverpod
HistoryQuizRepository historyQuizRepository(HistoryQuizRepositoryRef ref) {
  return HistoryQuizRepositoryImpl();
}
