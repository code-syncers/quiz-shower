import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_shower/data/model/quiz.dart';

part 'article.freezed.dart';

@freezed
class Article with _$Article {
  const Article._();

  const factory Article({
    required String id,
    required String createdBy,
    required DateTime createdAt,
    required String title,
    required String description,
    required bool isBookmarked,
    required ArticleType type,
    required String? url,
    required String content,
    required List<Quiz> quizzes,
    @Default(false) bool isPublic,
  }) = _Article;

  static Article mock() {
    return Article(
      id: '1',
      createdBy: 'taro',
      createdAt: DateTime.now(),
      title: '透明UIを作る',
      description: 'Flutterで透明UIを作る方法を紹介します。',
      isBookmarked: false,
      type: ArticleType.url,
      url: 'https://gajeroll.com/20230606-wwdc23/',
      content: 'Flutterで透明UIを作る方法を紹介します。',
      quizzes: [Quiz.mock()],
    );
  }
}

enum ArticleType {
  url,
  content,
  pdf,
}
