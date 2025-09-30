// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleModelImpl _$$ArticleModelImplFromJson(Map<String, dynamic> json) =>
    _$ArticleModelImpl(
      id: json['id'] as String?,
      source: json['source'] == null
          ? null
          : NewsSourceModel.fromJson(json['source'] as Map<String, dynamic>),
      author: json['author'] as String?,
      title: json['title'] as String,
      description: json['description'] as String?,
      url: json['url'] as String?,
      imageUrl: json['urlToImage'] as String?,
      publishedAtString: json['publishedAt'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$ArticleModelImplToJson(_$ArticleModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'source': instance.source,
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.imageUrl,
      'publishedAt': instance.publishedAtString,
      'content': instance.content,
    };
