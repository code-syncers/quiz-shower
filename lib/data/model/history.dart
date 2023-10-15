import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history.freezed.dart';
part 'history.g.dart';

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

  factory History.fromJson(Map<String, dynamic> json) =>
      _$HistoryFromJson(json);

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
