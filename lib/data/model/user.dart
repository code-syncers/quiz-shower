import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_shower/data/model/history.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();

  const factory User({
    required String userId,
    required String displayName,
    required int exp,
  }) = _User;

  static User mock() {
    return const User(
      userId: '123456',
      displayName: 'John Doe',
      exp: 1000,
    );
  }
}
