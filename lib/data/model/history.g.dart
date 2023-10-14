// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryImpl _$$HistoryImplFromJson(Map<String, dynamic> json) =>
    _$HistoryImpl(
      id: json['id'] as String,
      articleId: json['articleId'] as String,
      taisenId: json['taisenId'] as String?,
      isTaisen: json['isTaisen'] as bool? ?? false,
      isPublic: json['isPublic'] as bool? ?? false,
    );

Map<String, dynamic> _$$HistoryImplToJson(_$HistoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'articleId': instance.articleId,
      'taisenId': instance.taisenId,
      'isTaisen': instance.isTaisen,
      'isPublic': instance.isPublic,
    };
