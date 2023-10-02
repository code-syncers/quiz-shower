import 'package:flutter/material.dart';
import 'package:quiz_shower/navigation/quiz_shower_scaffold.dart';

class QuizShowerApp extends StatelessWidget {
  const QuizShowerApp({super.key});

  @override
  Widget build(BuildContext context) {
    const seedColor = Color(0xFFEAA4A4);
    return MaterialApp(
      title: 'Quiz Shower',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: seedColor,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: seedColor,
        brightness: Brightness.dark,
      ),
      home: const QuizShowerScaffold(),
    );
  }
}
