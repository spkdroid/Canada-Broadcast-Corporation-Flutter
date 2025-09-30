import 'package:equatable/equatable.dart';
import 'news_source.dart';

/// Domain entity representing a news article
class Article extends Equatable {
  final String? id;
  final NewsSource? source;
  final String? author;
  final String title;
  final String? description;
  final String? url;
  final String? imageUrl;
  final DateTime? publishedAt;
  final String? content;

  const Article({
    this.id,
    this.source,
    this.author,
    required this.title,
    this.description,
    this.url,
    this.imageUrl,
    this.publishedAt,
    this.content,
  });

  @override
  List<Object?> get props => [
    id,
    source,
    author,
    title,
    description,
    url,
    imageUrl,
    publishedAt,
    content,
  ];
}