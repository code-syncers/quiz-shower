import 'package:flutter_test/flutter_test.dart';

import 'package:quiz_shower/quiz_shower_app.dart';

void main() {
  testWidgets('Smoke test', (tester) async {
    await tester.pumpWidget(const QuizShowerApp());
  });
}
