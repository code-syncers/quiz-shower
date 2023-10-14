import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quiz_shower/data/model/article.dart';

abstract class ArticleRepository {
  Future<Article?> getArticle(String id);

  Future<void> createArticle(Article article);

  Future<void> deleteArticle(String id);

  Query<Article> articleQuery(String uid);
}
