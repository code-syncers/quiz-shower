import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'use_home_screen_state.freezed.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const HomeScreenState._();

  const factory HomeScreenState({
    required bool isUserLoggedIn,
    required String currentUserEmail,
    required bool isQuizMode,
    required void Function(bool) setMode,
  }) = _HomeScreenState;
}

HomeScreenState useHomeScreenState({
  required bool isUserLoggedIn,
  required String currentUserEmail,
  required bool isQuizMode,
}) {
  final isUserLoggedInState = useState(isUserLoggedIn);
  final currentUserEmailState = useState(currentUserEmail);
  final isQuizModeState = useState(isQuizMode);

  // void setIsUserLoggedIn(bool isUserLoggedIn) {
  //   isUserLoggedInState.value = isUserLoggedIn;
  // }

  // void setCurrentUserEmail(String currentUserEmail) {
  //   currentUserEmailState.value = currentUserEmail;
  // }

  void setMode(bool isQuizMode) {
    isQuizModeState.value = isQuizMode;
  }

  return HomeScreenState(
    isUserLoggedIn: isUserLoggedInState.value,
    currentUserEmail: currentUserEmailState.value,
    isQuizMode: isQuizModeState.value,
    setMode: setMode,
  );
}
