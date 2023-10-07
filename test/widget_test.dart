import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quiz_shower/quiz_shower_app.dart';

import 'mock.dart';

void main() {
  setupFirebaseAuthMocks();

  setUpAll(() async {
    await Firebase.initializeApp();
  });

  testWidgets('Smoke test', (tester) async {
    await tester.pumpWidget(const QuizShowerApp());
  });
}
