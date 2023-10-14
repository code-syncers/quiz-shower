import 'package:flutter/material.dart';

class AddArticleScreen extends StatelessWidget {
  const AddArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('記事を追加'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '記事のタイトル',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            const TextField(
              decoration: InputDecoration(
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
            const TextField(
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText: 'ここに記事の内容を入力してください',
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: const Text('作成'),
            ),
          ],
        ),
      ),
    );
  }
}
