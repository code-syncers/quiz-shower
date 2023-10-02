import 'package:flutter/material.dart';
import 'package:quiz_shower/ui/screen/article_screen/article_screen.dart';
import 'package:quiz_shower/ui/screen/user_screen/user_screen.dart';
import 'package:quiz_shower/ui/screen/quiz_screen/quiz_screen.dart';

class QuizShowerScaffold extends StatefulWidget {
  const QuizShowerScaffold({super.key});

  @override
  State<QuizShowerScaffold> createState() => _QuizShowerScaffoldState();
}

class _QuizShowerScaffoldState extends State<QuizShowerScaffold> {
  var _currentPageIndex = 0;

  final _pages = <Widget>[
    const ArticleScreen(),
    const QuizScreen(),
    const UserScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        selectedIndex: _currentPageIndex,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.description_outlined),
            selectedIcon: Icon(Icons.description_rounded),
            label: '記事',
          ),
          NavigationDestination(
            icon: Icon(Icons.quiz_outlined),
            selectedIcon: Icon(Icons.quiz_rounded),
            label: 'クイズ',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle_outlined),
            selectedIcon: Icon(Icons.account_circle_rounded),
            label: 'ユーザー',
          ),
        ],
      ),
      body: _pages[_currentPageIndex],
    );
  }
}
