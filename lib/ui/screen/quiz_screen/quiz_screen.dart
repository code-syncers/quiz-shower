import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:quiz_shower/data/model/quiz.dart';
import 'package:quiz_shower/ui/screen/quiz_screen/hook/use_quiz_screen_state.dart';
import 'package:quiz_shower/ui/screen/quiz_screen/quiz_result_screen.dart';

class QuizScreen extends HookWidget {
  const QuizScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final quizList = useMemoized(
      () => [
        Quiz.mock(),
        Quiz.mock(),
        Quiz.mock(),
      ],
    );
    QuizScreenState state = useQuizScreenState(
      quizList: quizList,
      currentQuizNumber: 0,
      selectedOptions: <int>[],
    );
    final currentQuiz = quizList[state.currentQuizNumber];

    bool checkAnswer() {
      final currentQuiz = quizList[state.currentQuizNumber];
      return listEquals(state.selectedOptions, currentQuiz.answers);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('クイズ'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '問題 ${state.currentQuizNumber + 1}:',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              currentQuiz.statement,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 16),
            Column(
              children: currentQuiz.options.asMap().entries.map(
                (entry) {
                  final index = entry.key;
                  //final option = entry.value;
                  return IconButton(
                    onPressed: () {
                      state.changeSelected(index);
                    },
                    icon: const Icon(Icons.add),
                    selectedIcon: const Icon(Icons.home),
                    isSelected: state.getIsSelected(index),
                  );
                },
              ).toList(),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // bool isCorrect = checkAnswer();
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(checkAnswer() ? '正解' : '不正解'),
                    content: Text(currentQuiz.explanation),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          state.goToNextQuiz();
                          if (state.currentQuizNumber >= quizList.length - 1) {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => const QuizResultScreen(),
                              ),
                            );
                          }
                        },
                        child: Text(
                          state.currentQuizNumber < quizList.length - 1
                              ? '次の問題'
                              : '終了',
                        ),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('回答する'),
            ),
          ],
        ),
      ),
    );
  }
}
