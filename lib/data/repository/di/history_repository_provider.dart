import 'package:quiz_shower/data/repository/history_repository.dart';
import 'package:quiz_shower/data/repository/history_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'history_repository_provider.g.dart';

@riverpod
HistoryRepository historyRepository(HistoryRepositoryRef ref) {
  return HistoryRepositoryImpl();
}
