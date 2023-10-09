import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:quiz_shower/ui/screen/article_screen/article_screen.dart';
import 'package:quiz_shower/ui/screen/quiz_screen/quiz_screen.dart';
import 'package:quiz_shower/ui/screen/user_screen/user_screen.dart';

class QuizShowerScaffold extends StatefulWidget {
  const QuizShowerScaffold({super.key});

  @override
  State<QuizShowerScaffold> createState() => _QuizShowerScaffoldState();
}

class _QuizShowerScaffoldState extends State<QuizShowerScaffold> {
  var _currentPageIndex = 0;
  String _currentUserEmail = '';
  bool _isUserLoggedIn = false;

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
    FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user != null && !user.isAnonymous && !_isUserLoggedIn) {
        _isUserLoggedIn = true;
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
      } else if (user == null && _isUserLoggedIn) {
        _isUserLoggedIn = false;
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
                child: Text(
                  _currentUserEmail.isEmpty ? 'ログインしていません' : _currentUserEmail,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: const Text('設定'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/setting_screen');
                },
              ),
              if (!_isUserLoggedIn)
                ListTile(
                  title: const Text('ログイン/登録'),
                  onTap: () async {
                    Navigator.pop(context); // close the drawer
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInScreen(
                          actions: [
                            AuthStateChangeAction<SignedIn>((context, state) {
                              _scaffoldMessengerKey.currentState?.showSnackBar(
                                const SnackBar(
                                  content: Text('ログインしました'),
                                  duration: Duration(seconds: 2),
                                ),
                              );
                              if (!mounted) return;
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const QuizShowerScaffold(),
                                ),
                              );
                            }),
                            AuthStateChangeAction<UserCreated>(
                                (context, state) {
                              _scaffoldMessengerKey.currentState?.showSnackBar(
                                const SnackBar(
                                  content: Text('ログインしました'),
                                  duration: Duration(seconds: 2),
                                ),
                              );
                              if (!mounted) return;
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const QuizShowerScaffold(),
                                ),
                              );
                            }),
                          ],
                          providers: [
                            EmailAuthProvider(),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              if (_isUserLoggedIn)
                ListTile(
                  title: const Text('ログアウト'),
                  onTap: () async {
                    await showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text(
                            'ログアウト',
                            textAlign: TextAlign.center,
                          ),
                          content: const Text(
                            '本当にログアウトしますか？',
                            textAlign: TextAlign.center,
                          ),
                          actions: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Spacer(
                                  flex: 3,
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('キャンセル'),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                TextButton(
                                  onPressed: () async {
                                    Navigator.of(context).pop();
                                    await FirebaseAuth.instance.signOut();
                                  },
                                  child: const Text('ログアウト'),
                                ),
                                const Spacer(
                                  flex: 3,
                                ),
                              ],
                            ),
                          ],
                        );
                      },
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
      ),
    );
  }
}
