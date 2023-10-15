import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quiz_shower/data/model/article.dart';
import 'package:quiz_shower/data/repository/di/article_repository_provider.dart';
import 'package:uuid/uuid.dart';

class AddArticleScreen extends HookConsumerWidget {
  const AddArticleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final repository = ref.watch(articleRepositoryProvider);
    final urlController = useTextEditingController();
    final titleController = useTextEditingController();
    final contentController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('記事を追加'),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '記事のURL',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  TextField(
                    controller: urlController,
                    decoration: const InputDecoration(
                      hintText: 'ここに記事のURLを入力してください',
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    '記事のタイトル',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  TextField(
                    controller: titleController,
                    decoration: const InputDecoration(
                      hintText: 'ここに記事のタイトルを入力してください',
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    '記事の内容',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    controller: contentController,
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                      hintText: 'ここに記事の内容を入力してください',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FloatingActionButton.extended(
                onPressed: () async {
                  await repository.createArticle(
                    Article(
                      id: const Uuid().v4(),
                      createdBy: 'hoge',
                      title: 'title hoge',
                      description: 'description hoge',
                      isBookmarked: false,
                      type: urlController.text != ''
                          ? ArticleType.url
                          : ArticleType.manual,
                      content: urlController.text != ''
                          ? urlController.text
                          : contentController.text,
                      createdAt: DateTime.now(),
                    ),
                  );
                },
                icon: const Icon(Icons.done),
                label: const Text('保存'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
