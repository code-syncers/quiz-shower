import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'use_home_screen_state.freezed.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const HomeScreenState._();

  const factory HomeScreenState({
    required bool isQuizMode,
    required void Function(bool) setMode,
  }) = _HomeScreenState;
}

HomeScreenState useHomeScreenState({
  required bool isQuizMode,
}) {
  final isQuizModeState = useState(isQuizMode);

  void setMode(bool isQuizMode) {
    isQuizModeState.value = isQuizMode;
  }

  return HomeScreenState(
    isQuizMode: isQuizModeState.value,
    setMode: setMode,
  );
}
