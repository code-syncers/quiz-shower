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
          child: Center(
            child: Text('quiz'),
          ),
        ));
  }
}
