import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/news_source.dart';

part 'news_source_model.freezed.dart';
part 'news_source_model.g.dart';

/// Data model for news source
@freezed
class NewsSourceModel with _$NewsSourceModel {
  const factory NewsSourceModel({
    String? id,
    required String name,
  }) = _NewsSourceModel;

  factory NewsSourceModel.fromJson(Map<String, dynamic> json) =>
      _$NewsSourceModelFromJson(json);
}

/// Extension to convert model to domain entity
extension NewsSourceModelX on NewsSourceModel {
  NewsSource toDomain() {
    return NewsSource(
      id: id,
      name: name,
    );
  }
}