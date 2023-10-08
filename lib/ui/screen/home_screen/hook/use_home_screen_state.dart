import 'package:flutter_hooks/flutter_hooks.dart';

class HomeScreenState {
  const HomeScreenState({
    required this.isQuizMode,
    required this.toggleQuizMode,
  });

  final bool isQuizMode;
  final void Function() toggleQuizMode;
}

HomeScreenState useHomeScreenState({
  required bool isQuizMode,
}) {
  final isQuizModeState = useState(isQuizMode);

  void toggleQuizMode() {
    isQuizModeState.value = !isQuizModeState.value;
  }

  return HomeScreenState(
    isQuizMode: isQuizModeState.value,
    toggleQuizMode: toggleQuizMode,
  );
}
