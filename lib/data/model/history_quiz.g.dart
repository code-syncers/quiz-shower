// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_quiz.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryQuizImpl _$$HistoryQuizImplFromJson(Map<String, dynamic> json) =>
    _$HistoryQuizImpl(
      quizId: json['quizId'] as String,
      choices: (json['choices'] as List<dynamic>).map((e) => e as int).toList(),
      isCorrect: json['isCorrect'] as bool,
      time: const FirestoreDateTimeConverter()
          .fromJson(json['time'] as Timestamp),
    );

Map<String, dynamic> _$$HistoryQuizImplToJson(_$HistoryQuizImpl instance) =>
    <String, dynamic>{
      'quizId': instance.quizId,
      'choices': instance.choices,
      'isCorrect': instance.isCorrect,
      'time': const FirestoreDateTimeConverter().toJson(instance.time),
    };
