import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:quiz_shower/data/model/quiz.dart';
import 'package:quiz_shower/ui/screen/quiz_screen/hook/use_quiz_screen_state.dart';

class QuizScreen extends HookWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final quizList = useMemoized(
      () => [
        Quiz.mock(),
        Quiz.mock(),
        Quiz.mock(),
        Quiz.mock(),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('クイズ'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: quizList.asMap().entries.map((entry) {
            final index = entry.key;
            final quiz = entry.value;
            final state = useQuizScreenState(
              quizList: quizList,
              currentQuizNumber: index,
              selectedOptions: <int>[],
            );

            return Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '問題 ${index + 1}:',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    quiz.statement,
                  ),
                  const SizedBox(height: 16),
                  Column(
                    children: quiz.options.asMap().entries.map((entry) {
                      final optionIndex = entry.key;
                      final option = entry.value;
                      return InkWell(
                        onTap: state.hasAnswered
                            ? null
                            : () {
                                state.changeSelected(optionIndex);
                              },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              state.getIsSelected(optionIndex)
                                  ? Icon(
                                      Icons.check_box_rounded,
                                      color: state.hasAnswered
                                          ? Theme.of(context)
                                              .colorScheme
                                              .onSurface
                                              .withOpacity(0.5)
                                          : null,
                                    )
                                  : Icon(
                                      Icons.check_box_outline_blank_rounded,
                                      color: state.hasAnswered
                                          ? Theme.of(context)
                                              .colorScheme
                                              .onSurface
                                              .withOpacity(0.5)
                                          : null,
                                    ),
                              const SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Text(
                                  option,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 16),
                  state.hasAnswered
                      ? const SizedBox()
                      : ElevatedButton(
                          onPressed: () {
                            state.showAnswer();
                          },
                          child: const Text('回答する'),
                        ),
                  if (state.hasAnswered)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          state.checkAnswer() ? '正解' : '不正解',
                          style: const TextStyle(fontSize: 18),
                        ),
                        Text(
                          '答え: ${quiz.explanation}',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
