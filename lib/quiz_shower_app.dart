import 'package:flutter/material.dart';
import 'package:quiz_shower/ui/screen/setting_screen/setting_screen.dart';
import 'package:quiz_shower/ui/widget/quiz_shower_scaffold.dart';

class QuizShowerApp extends StatelessWidget {
  const QuizShowerApp({super.key});

  @override
  Widget build(BuildContext context) {
    const seedColor = Color(0xFFEAA4A4);
    return MaterialApp(
      routes: {
        '/setting_screen': (context) => const SettingScreen(), // Add this line
      },
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
