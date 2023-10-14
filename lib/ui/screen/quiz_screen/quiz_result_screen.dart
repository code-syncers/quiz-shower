import 'package:flutter/material.dart';

class QuizResultScreen extends StatelessWidget {
  const QuizResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('クイズ結果'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: CircularProgressIndicator(
                  strokeWidth: 15,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  value: 0.8,
                  color: Theme.of(context).colorScheme.primary,
                  backgroundColor: Theme.of(context)
                      .colorScheme
                      .onBackground
                      .withOpacity(0.2),
                  strokeCap: StrokeCap.round,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ここに1つ目のRowの子ウィジェットを追加します
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // ここに2つ目のRowの子ウィジェットを追加します
                ],
              ),
              const ListTile(
                  // ここにListTileのプロパティや子ウィジェットを追加します
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
