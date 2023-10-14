import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quiz_shower/data/model/article.dart';

abstract class ArticleRepository {
  Query<Article> articleQuery(String uid);

  Future<Article?> getArticle(String id);

  Future<void> createArticle(Article article);

  Future<void> deleteArticle(String id);
}
