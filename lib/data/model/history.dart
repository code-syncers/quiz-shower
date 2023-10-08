import 'package:freezed_annotation/freezed_annotation.dart';

part 'history.freezed.dart';

@freezed
class History with _$History {
  const History._();

  const factory History({
    required String id,
    required String articleId,
    required String? taisenId,
    @Default(false) bool isTaisen,
    @Default(false) bool isPublic,
  }) = _History;

  static History mock() {
    return const History(
      id: '1',
      articleId: '1',
      taisenId: null,
      isTaisen: false,
      isPublic: true,
    );
  }
}
