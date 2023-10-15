// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleImpl _$$ArticleImplFromJson(Map<String, dynamic> json) =>
    _$ArticleImpl(
      id: json['id'] as String,
      createdBy: json['createdBy'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      isBookmarked: json['isBookmarked'] as bool,
      type: $enumDecode(_$ArticleTypeEnumMap, json['type']),
      content: json['content'] as String,
      isPublic: json['isPublic'] as bool? ?? false,
      createdAt: const FirestoreDateTimeConverter()
          .fromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$ArticleImplToJson(_$ArticleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdBy': instance.createdBy,
      'title': instance.title,
      'description': instance.description,
      'isBookmarked': instance.isBookmarked,
      'type': _$ArticleTypeEnumMap[instance.type]!,
      'content': instance.content,
      'isPublic': instance.isPublic,
      'createdAt':
          const FirestoreDateTimeConverter().toJson(instance.createdAt),
    };

const _$ArticleTypeEnumMap = {
  ArticleType.url: 'url',
  ArticleType.manual: 'manual',
};
