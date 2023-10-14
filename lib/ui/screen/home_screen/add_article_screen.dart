import 'package:flutter/material.dart';

class AddArticleScreen extends StatelessWidget {
  const AddArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('記事を追加'),
      ),
      body: Stack(
        children: [
          const SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '記事のタイトル',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'ここに記事のタイトルを入力してください',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    '記事の内容',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
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
                onPressed: () {},
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
