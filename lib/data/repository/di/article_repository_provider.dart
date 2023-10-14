import 'package:quiz_shower/data/repository/article_repository.dart';
import 'package:quiz_shower/data/repository/article_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'article_repository_provider.g.dart';

@riverpod
ArticleRepository articleRepository(ArticleRepositoryRef ref) {
  return ArticleRepositoryImpl();
}
