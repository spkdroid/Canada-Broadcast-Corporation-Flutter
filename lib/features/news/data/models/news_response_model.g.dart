// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsResponseModelImpl _$$NewsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NewsResponseModelImpl(
      status: json['status'] as String,
      totalResults: (json['totalResults'] as num?)?.toInt(),
      articles: (json['articles'] as List<dynamic>)
          .map((e) => ArticleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NewsResponseModelImplToJson(
        _$NewsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };
