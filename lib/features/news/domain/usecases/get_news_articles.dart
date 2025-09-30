import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../entities/article.dart';
import '../repositories/news_repository.dart';

/// Use case for getting news articles
@lazySingleton
class GetNewsArticles {
  final NewsRepository repository;

  GetNewsArticles(this.repository);

  Future<Either<Failure, List<Article>>> call() async {
    return await repository.getNewsArticles();
  }
}