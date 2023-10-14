import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_shower/data/model/firestore_datetime_convert.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  const Article._();

  const factory Article({
    required String id,
    required String createdBy,
    required String title,
    required String description,
    required bool isBookmarked,
    required ArticleType type,
    required String? url,
    required String content,
    @Default(false) bool isPublic,
    @FirestoreDateTimeConverter() required DateTime createdAt,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);

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
    );
  }
}

enum ArticleType {
  url,
  manual,
}
