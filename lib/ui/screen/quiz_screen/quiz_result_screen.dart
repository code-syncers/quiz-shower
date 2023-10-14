import 'package:flutter/material.dart';
import 'package:quiz_shower/data/model/quiz.dart';
import 'package:quiz_shower/ui/screen/home_screen/home_screen.dart';
import 'package:quiz_shower/ui/screen/quiz_screen/quiz_screen.dart';

class QuizResultScreen extends StatelessWidget {
  QuizResultScreen({super.key});
  final Quiz quiz = Quiz.mock();
  final quizList = [Quiz.mock()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('クイズ結果'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 48.0, 48.0, 16.0),
          child: Column(
            children: [
              const SizedBox(height: 50),
              Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: CircularProgressIndicator(
                      strokeWidth: 15,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      value: 0.78, //ここを正答率に変更する
                      color: Theme.of(context).colorScheme.primary,
                      backgroundColor: Theme.of(context)
                          .colorScheme
                          .onBackground
                          .withOpacity(0.2),
                      strokeCap: StrokeCap.round,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                          text: '4', //ここを正解問題数に変更する(correctedQuiz)
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.tertiary,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        TextSpan(
                          text: '/5',
                          style: TextStyle(
                            fontSize: 20,
                            color: Theme.of(context).colorScheme.secondary,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // ResultCharacter(),
              const SizedBox(height: 50),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuizScreen(),
                      ),
                    );
                  },
                  child: const Text('続ける'),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('間違えた問題'),
                    ),
                  ),
                  const SizedBox(width: 16),
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const QuizShowerScaffold(),
                          ),
                        );
                      },
                      child: const Text('やめる'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 30),
                  Text('クイズ', style: TextStyle(fontSize: 20)),
                ],
              ),
              ...quizList.asMap().entries.map((entry) {
                int idx = entry.key;
                Quiz quiz = entry.value;
                return ListTile(
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Q${idx + 1}: '),
                          Expanded(child: Text(quiz.statement)),
                        ],
                      ),
                      Text('答え: ${quiz.options[quiz.answers[0]]}'), // 正解の選択肢を表示
                    ],
                  ),
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
