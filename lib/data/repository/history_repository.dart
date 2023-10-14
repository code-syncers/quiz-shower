import 'package:quiz_shower/data/model/history.dart';

abstract class HistoryRepository {
  Future<History?> getHistory(String id);

  Future<void> createHistory(History history);

  Future<void> deleteHistory(String id);
}
