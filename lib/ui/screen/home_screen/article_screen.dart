import 'package:flutter/material.dart';
import 'package:quiz_shower/data/model/article.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Article article = Article.mock();
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
                const Row(
                  children: [
                    Spacer(),
                    IconButton(onPressed: null, icon: Icon(Icons.edit_rounded)),
                    IconButton(
                      onPressed: null,
                      icon: Icon(Icons.share_rounded),
                    ),
                    IconButton(
                      onPressed: null,
                      icon: Icon(Icons.bookmark_rounded),
                    ),
                  ],
                ),
                const SizedBox(height: 4.0),
                const Divider(thickness: 1.0),
                const SizedBox(height: 8.0),
                Text(article.content),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
