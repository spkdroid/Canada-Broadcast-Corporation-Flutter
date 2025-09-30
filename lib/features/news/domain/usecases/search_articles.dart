import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../entities/article.dart';
import '../repositories/news_repository.dart';

/// Use case for searching articles
@lazySingleton
class SearchArticles {
  final NewsRepository repository;

  SearchArticles(this.repository);

  Future<Either<Failure, List<Article>>> call(String query) async {
    if (query.trim().isEmpty) {
      return const Left(ValidationFailure(message: 'Search query cannot be empty'));
    }
    
    return await repository.searchArticles(query);
  }
}