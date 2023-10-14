import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:quiz_shower/data/model/article.dart';
import 'package:quiz_shower/ui/screen/dashboard_screen.dart';
import 'package:quiz_shower/ui/screen/home_screen/component/preview_card.dart';
import 'package:quiz_shower/ui/screen/home_screen/hook/use_home_screen_state.dart';

class QuizShowerScaffold extends StatefulHookWidget {
  const QuizShowerScaffold({super.key});

  @override
  State<QuizShowerScaffold> createState() => _QuizShowerScaffoldState();
}

class _QuizShowerScaffoldState extends State<QuizShowerScaffold> {
  bool _isUserLoggedIn = false;
  String _currentUserEmail = '';

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
    HomeScreenState state = useHomeScreenState(isQuizMode: false);
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
              if (kDebugMode)
                ListTile(
                  title: const Text('debug画面'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/debug');
                  },
                ),
              ListTile(
                title: const Text('設定'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/setting_screen');
                },
              ),
              ListTile(
                title: const Text('ダッシュボード'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DashboardScreen(),
                    ),
                  );
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
        body: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            ListView.separated(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 80),
              itemCount: 50,
              itemBuilder: (BuildContext context, int index) {
                return PreviewCard(
                  article: Article.mock(),
                  isQuizMode: state.isQuizMode,
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 8),
            ),
            SafeArea(
              child: Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: Switch(
                  value: state.isQuizMode,
                  onChanged: (value) {
                    state.toggleQuizMode();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
