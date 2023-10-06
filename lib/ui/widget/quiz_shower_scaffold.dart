import 'package:flutter/material.dart';
import 'package:quiz_shower/ui/screen/article_screen/article_screen.dart';
import 'package:quiz_shower/ui/screen/user_screen/user_screen.dart';
import 'package:quiz_shower/ui/screen/quiz_screen/quiz_screen.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb_auth;
import 'package:firebase_ui_auth/firebase_ui_auth.dart' as ui_auth;

class QuizShowerScaffold extends StatefulWidget {
  const QuizShowerScaffold({super.key});

  @override
  State<QuizShowerScaffold> createState() => _QuizShowerScaffoldState();
}

class _QuizShowerScaffoldState extends State<QuizShowerScaffold> {
  var _currentPageIndex = 0;
  String _currentUserEmail = '';

  final _pages = <Widget>[
    const ArticleScreen(),
    const QuizScreen(),
    const UserScreen(),
  ];

  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  @override
  void initState() {
    super.initState();
    fb_auth.FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user != null && !user.isAnonymous) {
        setState(() {
          _currentUserEmail = user.email ?? '';
        });
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _scaffoldMessengerKey.currentState?.showSnackBar(
            const SnackBar(
              content: Text('ログインしました'),
              duration: Duration(seconds: 2),
            ),
          );
        });
      } else {
        setState(() {
          _currentUserEmail = '';
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
        key: _scaffoldMessengerKey,
        child: Scaffold(
          appBar: AppBar(
            leading: Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  child: Text(_currentUserEmail),
                ),
                ListTile(
                  title: const Text('設定'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/setting_screen');
                  },
                ),
                ListTile(
                  title: const Text('サインイン'),
                  onTap: () async {
                    Navigator.pop(context);
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ui_auth.SignInScreen(
                            providers: [ui_auth.EmailAuthProvider()]),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          body: _pages[_currentPageIndex],
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
        ));
  }
}
