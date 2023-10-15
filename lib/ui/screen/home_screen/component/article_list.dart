import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quiz_shower/data/repository/di/article_repository_provider.dart';
import 'package:quiz_shower/ui/screen/home_screen/component/preview_card.dart';

class ArticleList extends ConsumerWidget {
  const ArticleList({super.key, required this.isQuizMode});

  final bool isQuizMode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articleRepository = ref.watch(articleRepositoryProvider);

    return FirestoreListView(
      padding: EdgeInsets.fromLTRB(
        8,
        MediaQuery.of(context).padding.top + 80,
        8,
        80,
      ),
      query: articleRepository.articleQuery(),
      emptyBuilder: (context) => const Center(
        child: Text('記事がありません'),
      ),
      errorBuilder: (context, error, stackTrace) => const Center(
        child: Text('エラーが発生しました'),
      ),
      itemBuilder: (context, snapshot) {
        return Column(
          children: [
            PreviewCard(
              article: snapshot.data(),
              isQuizMode: isQuizMode,
            ),
            const SizedBox(height: 8),
          ],
        );
      },
    );
  }
}
