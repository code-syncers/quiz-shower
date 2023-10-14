// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleImpl _$$ArticleImplFromJson(Map<String, dynamic> json) =>
    _$ArticleImpl(
      id: json['id'] as String,
      createdBy: json['createdBy'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      title: json['title'] as String,
      description: json['description'] as String,
      isBookmarked: json['isBookmarked'] as bool,
      type: $enumDecode(_$ArticleTypeEnumMap, json['type']),
      url: json['url'] as String?,
      content: json['content'] as String,
      isPublic: json['isPublic'] as bool? ?? false,
    );

Map<String, dynamic> _$$ArticleImplToJson(_$ArticleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdBy': instance.createdBy,
      'createdAt': instance.createdAt.toIso8601String(),
      'title': instance.title,
      'description': instance.description,
      'isBookmarked': instance.isBookmarked,
      'type': _$ArticleTypeEnumMap[instance.type]!,
      'url': instance.url,
      'content': instance.content,
      'isPublic': instance.isPublic,
    };

const _$ArticleTypeEnumMap = {
  ArticleType.url: 'url',
  ArticleType.manual: 'manual',
};
