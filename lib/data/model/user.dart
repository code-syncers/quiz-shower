import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();

  const factory User({
    required String userId,
    required String displayName,
    required int exp,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  static User mock() {
    return const User(
      userId: '123456',
      displayName: 'John Doe',
      exp: 1000,
    );
  }
}
