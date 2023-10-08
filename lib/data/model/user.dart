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
    required List<History> histories,
  }) = _User;

  static User mock() {
    return User(
      userId: '123456',
      displayName: 'John Doe',
      exp: 1000,
      histories: [History.mock(), History.mock()],
    );
  }
}
