import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz.freezed.dart';
part 'quiz.g.dart';

@freezed
class Quiz with _$Quiz {
  const Quiz._();

  const factory Quiz({
    required String id,
    required String articleId,
    required String title,
    required String statement,
    required bool isFavorite,
    required List<String> options,
    required List<int> answers,
    required String explanation,
  }) = _Quiz;

  factory Quiz.fromJson(Map<String, dynamic> json) => _$QuizFromJson(json);

  static Quiz mock() {
    return const Quiz(
      id: '1',
      articleId: '1',
      title: '透明UIを作る',
      statement: '透明UIとは何ですか',
      isFavorite: false,
      options: [
        'UI要素が見えないようにするテクニック',
        '背景が透明なUIデザイン',
        'ユーザーが透明なUI要素を操作できるテクニック',
      ],
      answers: [0],
      explanation: '透明UIは、UI要素が見えないようにするテクニックを指します。',
    );
  }
}
