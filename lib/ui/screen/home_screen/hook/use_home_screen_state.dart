import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'use_home_screen_state.freezed.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const HomeScreenState._();

  const factory HomeScreenState({
    required bool isQuizMode,
    required void Function() toggleQuizMode,
  }) = _HomeScreenState;
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
