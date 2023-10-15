import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:quiz_shower/ui/screen/dashboard_screen.dart';
import 'package:quiz_shower/ui/screen/home_screen/add_article_screen.dart';
import 'package:quiz_shower/ui/screen/home_screen/component/article_list.dart';
import 'package:quiz_shower/ui/screen/home_screen/component/suggestion.dart';
import 'package:quiz_shower/ui/screen/home_screen/hook/use_home_screen_state.dart';
import 'package:quiz_shower/ui/screen/home_screen/share_app_screen.dart';
import 'package:quiz_shower/ui/screen/setting_screen/setting_screen.dart';

class QuizShowerScaffold extends HookWidget {
  const QuizShowerScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    HomeScreenState state = useHomeScreenState(
      isUserLoggedIn: false,
      currentUserEmail: '',
      isQuizMode: false,
    );
    SearchController searchController = SearchController();
    final histories = [
      '履歴1',
      '履歴2',
      '履歴3',
      '履歴4',
      '履歴5',
      '履歴6',
      '履歴7',
    ];
    final recommendations = [
      'おすすめ1',
      'おすすめ2',
      'おすすめ3',
      'おすすめ4',
      'おすすめ5',
    ];

    final searchBackgroundColor = Color.alphaBlend(
      Theme.of(context).colorScheme.primary.withOpacity(0.08),
      Theme.of(context).colorScheme.background,
    );

    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Text(
                state.currentUserEmail.isNotEmpty
                    ? state.currentUserEmail
                    : 'ログインしていません',
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
            if (!state.isUserLoggedIn)
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
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('ログインしました'),
                                duration: Duration(seconds: 2),
                              ),
                            );
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    const QuizShowerScaffold(),
                              ),
                            );
                          }),
                          AuthStateChangeAction<UserCreated>((context, state) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('ログインしました'),
                                duration: Duration(seconds: 2),
                              ),
                            );
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
            if (state.isUserLoggedIn)
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
            Expanded(
              child: LayoutBuilder(
                builder: (context, constrains) {
                  return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: constrains.maxHeight,
                      ),
                      child: IntrinsicHeight(
                        child: Column(
                          children: [
                            ListTile(
                              title: const Text('設定'),
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.pushNamed(
                                  context,
                                  '/setting_screen',
                                );
                              },
                            ),
                            ListTile(
                              title: const Text('ダッシュボード'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const DashboardScreen(),
                                  ),
                                );
                              },
                            ),
                            const Spacer(),
                            const Divider(
                              thickness: 1.0,
                            ),
                            ListTile(
                              leading: const Icon(Icons.share_rounded),
                              title: const Text('アプリを共有'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ShareAppScreen(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          ArticleList(isQuizMode: state.isQuizMode),
          // ListView.separated(
          //   padding: EdgeInsets.fromLTRB(
          //     8,
          //     MediaQuery.of(context).padding.top + 80,
          //     8,
          //     80,
          //   ),
          //   itemCount: 50,
          //   itemBuilder: (BuildContext context, int index) {
          //     return PreviewCard(
          //       article: Article.mock(),
          //       isQuizMode: state.isQuizMode,
          //     );
          //   },
          //   separatorBuilder: (BuildContext context, int index) =>
          //       const SizedBox(height: 8),
          // ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + 8,
              left: 8,
              right: 8,
            ),
            child: SearchAnchor.bar(
              searchController: searchController,
              isFullScreen: MediaQuery.of(context).size.width < 600,
              constraints: const BoxConstraints(
                minHeight: 56,
                maxWidth: 720,
              ),
              barElevation: MaterialStateProperty.all(0),
              barBackgroundColor:
                  MaterialStateProperty.all(searchBackgroundColor),
              barPadding: MaterialStateProperty.all(
                const EdgeInsets.fromLTRB(8, 0, 10, 0),
              ),
              barLeading: IconButton(
                icon: const Icon(Icons.menu_rounded),
                onPressed: () => scaffoldKey.currentState?.openDrawer(),
              ),
              barHintText: '検索',
              barHintStyle: MaterialStateProperty.all(
                TextStyle(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
              barTextStyle: MaterialStateProperty.all(
                TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
              barTrailing: searchController.text.isNotEmpty
                  ? [
                      IconButton(
                        icon: Icon(
                          Icons.highlight_off_rounded,
                          color: Theme.of(context)
                              .colorScheme
                              .onBackground
                              .withOpacity(0.75),
                        ),
                        onPressed: () {
                          searchController.clear();
                        },
                      ),
                    ]
                  : [
                      Container(
                        width: 36,
                        height: 36,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const SettingScreen(),
                              ),
                            );
                          },
                          padding: EdgeInsets.zero,
                          icon: Image.network(
                            'https://github.com/yumayuma708.png',
                          ),
                        ),
                      ),
                    ],
              viewBackgroundColor: searchBackgroundColor,
              viewLeading: IconButton(
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Theme.of(context)
                      .colorScheme
                      .onBackground
                      .withOpacity(0.75),
                ),
                onPressed: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  Navigator.of(context).pop();
                },
              ),
              viewHintText: '検索',
              viewHeaderHintStyle: TextStyle(
                color: Theme.of(context)
                    .colorScheme
                    .onSurfaceVariant
                    .withOpacity(0.75),
              ),
              viewTrailing: searchController.text.isNotEmpty
                  ? [
                      IconButton(
                        icon: Icon(
                          Icons.highlight_off_rounded,
                          color: Theme.of(context)
                              .colorScheme
                              .onBackground
                              .withOpacity(0.75),
                        ),
                        onPressed: () {
                          searchController.clear();
                        },
                      ),
                      const SizedBox(width: 8),
                    ]
                  : [],
              suggestionsBuilder: (context, controller) {
                if (controller.text.isEmpty) {
                  if (histories.isEmpty && recommendations.isEmpty) {
                    return [];
                  } else {
                    return [
                      for (var i = 0; i < histories.length; i++)
                        Suggestion(
                          isSearched: true,
                          text: histories[i],
                          controller: searchController,
                        ),
                      for (var i = 0; i < recommendations.length; i++)
                        Suggestion(
                          text: recommendations[i],
                          controller: searchController,
                        ),
                      const SizedBox(height: 16),
                    ];
                  }
                } else {
                  return [
                    for (var i = 0; i < histories.length; i++)
                      Suggestion(
                        isSearched: true,
                        text: histories[i],
                        controller: searchController,
                      ),
                    for (var i = 0; i < recommendations.length; i++)
                      Suggestion(
                        text: recommendations[i],
                        controller: searchController,
                      ),
                    const SizedBox(height: 16),
                  ];
                }
              },
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).padding.bottom + 12,
            ),
            child: Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: Container(
                padding: const EdgeInsets.all(5),
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.white
                      : Colors.black,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: TabBar(
                  controller: useTabController(initialLength: 2),
                  onTap: (index) {
                    state.setMode(index == 1);
                  },
                  tabs: const <Tab>[
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.article_rounded),
                          SizedBox(width: 8),
                          Text('記事'),
                          SizedBox(width: 4),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.quiz_rounded),
                          SizedBox(width: 8),
                          Text('クイズ'),
                          SizedBox(width: 4),
                        ],
                      ),
                    ),
                  ],
                  labelColor: Theme.of(context).colorScheme.onPrimary,
                  unselectedLabelColor: Theme.of(context)
                      .colorScheme
                      .onBackground
                      .withOpacity(0.5),
                  isScrollable: true,
                  padding: EdgeInsets.zero,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 0,
                  indicatorPadding: const EdgeInsets.fromLTRB(-16, 0, -16, 0),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          state.isQuizMode
              ? Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddArticleScreen(),
                  ),
                )
              : Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddArticleScreen(),
                  ),
                );
        },
        child: state.isQuizMode
            ? const Icon(Icons.scoreboard_rounded)
            : const Icon(Icons.add_rounded),
      ),
    );
  }
}
