import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';

@freezed
class Article with _$Article {
  const Article._();

  const factory Article({
    required String title,
    required String description,
    required String content,
    required String url,
  }) = _Article;

  static Article mock() {
    return const Article(
      title: '透明UIを作る',
      description: 'Flutterで透明UIを作る方法を紹介します。',
      content: 'Flutterで透明UIを作る方法を紹介します。',
      url: 'https://gajeroll.com/20230606-wwdc23/',
    );
  }
}
