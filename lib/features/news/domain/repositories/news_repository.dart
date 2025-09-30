import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/article.dart';

/// Repository interface for news data
abstract class NewsRepository {
  /// Fetch news articles from CBC News
  Future<Either<Failure, List<Article>>> getNewsArticles();
  
  /// Get a specific article by URL
  Future<Either<Failure, Article?>> getArticleByUrl(String url);
  
  /// Search for articles with a query
  Future<Either<Failure, List<Article>>> searchArticles(String query);
}