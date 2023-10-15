import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quiz_shower/data/model/history.dart';

abstract class HistoryRepository {
  Query<History> historyQuery();

  Future<History?> getHistory(String id);

  Future<void> createHistory(History history);

  Future<void> deleteHistory(String id);
}
