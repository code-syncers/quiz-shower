import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:quiz_shower/data/model/article.dart';
import 'package:quiz_shower/data/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  static const String articlesCollectionPath = 'articles';

  final CollectionReference<Article> articlesRef = FirebaseFirestore.instance
      .collection(articlesCollectionPath)
      .withConverter(
        fromFirestore: (snapshot, _) => Article.fromJson(snapshot.data()!),
        toFirestore: (article, _) => article.toJson(),
      );

  @override
  Query<Article> articleQuery() {
    final uid = FirebaseAuth.instance.currentUser!.uid;
    return articlesRef.where('createdBy', isEqualTo: uid);
  }

  @override
  Future<Article?> getArticle(String id) async {
    final snapshot = await articlesRef.doc(id).get();
    return snapshot.data();
  }

  @override
  Future<void> createArticle(Article article) async {
    await articlesRef.doc(article.id).set(article, SetOptions(merge: true));
  }

  @override
  Future<void> deleteArticle(String id) async {
    await articlesRef.doc(id).delete();
  }
}
