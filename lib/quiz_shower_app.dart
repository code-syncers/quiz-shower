import 'package:firebase_ui_localizations/firebase_ui_localizations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:quiz_shower/ui/screen/home_screen/article_screen.dart';
import 'package:quiz_shower/ui/screen/home_screen/home_screen.dart';
import 'package:quiz_shower/ui/screen/setting_screen/setting_screen.dart';

class QuizShowerApp extends StatelessWidget {
  const QuizShowerApp({super.key});

  @override
  Widget build(BuildContext context) {
    const seedColor = Color(0xFFFF842F);

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
      ),
    );
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
    );

    return MaterialApp(
      routes: {
        '/setting_screen': (context) => const SettingScreen(),
        '/article': (context) => const ArticleScreen(),
      },
      title: 'Quiz Shower',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: seedColor,
        brightness: Brightness.light,
        fontFamily: kIsWeb ? 'NotoSansJP' : null,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: seedColor,
        brightness: Brightness.dark,
        fontFamily: kIsWeb ? 'NotoSansJP' : null,
      ),
      home: const QuizShowerScaffold(),
      debugShowCheckedModeBanner: false,
      locale: const Locale('ja', 'JP'),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        FirebaseUILocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ja', 'JP'),
      ],
    );
  }
}
