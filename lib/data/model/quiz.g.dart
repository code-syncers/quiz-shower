// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizImpl _$$QuizImplFromJson(Map<String, dynamic> json) => _$QuizImpl(
      id: json['id'] as String,
      articleId: json['articleId'] as String,
      title: json['title'] as String,
      statement: json['statement'] as String,
      isFavorite: json['isFavorite'] as bool,
      options:
          (json['options'] as List<dynamic>).map((e) => e as String).toList(),
      answers:
          (json['answers'] as List<dynamic>).map((e) => e as String).toList(),
      explanation: json['explanation'] as String,
    );

Map<String, dynamic> _$$QuizImplToJson(_$QuizImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'articleId': instance.articleId,
      'title': instance.title,
      'statement': instance.statement,
      'isFavorite': instance.isFavorite,
      'options': instance.options,
      'answers': instance.answers,
      'explanation': instance.explanation,
    };
