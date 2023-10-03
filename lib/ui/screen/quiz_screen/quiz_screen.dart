import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('記事のタイトル'),
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
            child: Column(children: [
              Text(
                "Q番号.  問題文",
                style: TextStyle(fontSize: 20), // 任意でスタイルを調整できます
              ),
            ]),
          ),
        ));
  }
}
