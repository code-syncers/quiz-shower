import 'package:flutter/material.dart';
import 'package:quiz_shower/ui/navigation/quiz_shower_navigation.dart';

void main() {
  runApp(const QuizShower());
}

class QuizShower extends StatelessWidget {
  const QuizShower({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz Shower',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const QuizShowerNavigation(),
    );
  }
}
