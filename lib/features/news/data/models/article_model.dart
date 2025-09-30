import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/utils/helpers.dart';
import '../../domain/entities/article.dart';
import 'news_source_model.dart';

part 'article_model.freezed.dart';
part 'article_model.g.dart';

/// Data model for article
@freezed
class ArticleModel with _$ArticleModel {
  const factory ArticleModel({
    String? id,
    NewsSourceModel? source,
    String? author,
    required String title,
    String? description,
    String? url,
    @JsonKey(name: 'urlToImage') String? imageUrl,
    @JsonKey(name: 'publishedAt') String? publishedAtString,
    String? content,
  }) = _ArticleModel;

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);
}

/// Extension to convert model to domain entity
extension ArticleModelX on ArticleModel {
  Article toDomain() {
    return Article(
      id: id,
      source: source?.toDomain(),
      author: author,
      title: title,
      description: description,
      url: url,
      imageUrl: imageUrl,
      publishedAt: DateHelper.parseApiDate(publishedAtString),
      content: content,
    );
  }
}