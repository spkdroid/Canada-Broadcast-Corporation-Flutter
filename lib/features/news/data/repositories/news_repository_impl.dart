import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_service.dart';
import '../../domain/entities/article.dart';
import '../../domain/repositories/news_repository.dart';
import '../datasources/news_remote_data_source.dart';
import '../models/article_model.dart';

/// Implementation of NewsRepository
@LazySingleton(as: NewsRepository)
class NewsRepositoryImpl implements NewsRepository {
  final NewsRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  NewsRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<Article>>> getNewsArticles() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.getNewsArticles();
        final articles = response.articles
            .map((model) => model.toDomain())
            .toList();
        return Right(articles);
      } on ServerException catch (e) {
        return Left(ServerFailure(
          message: e.message,
          statusCode: e.statusCode,
        ));
      } on NetworkException catch (e) {
        return Left(NetworkFailure(message: e.message));
      } catch (e) {
        return Left(ServerFailure(message: e.toString()));
      }
    } else {
      return const Left(NetworkFailure(message: 'No internet connection'));
    }
  }

  @override
  Future<Either<Failure, Article?>> getArticleByUrl(String url) async {
    // For now, return null as this feature isn't implemented
    // In a real app, you might cache articles locally and search by URL
    return const Right(null);
  }

  @override
  Future<Either<Failure, List<Article>>> searchArticles(String query) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await remoteDataSource.searchArticles(query);
        final articles = response.articles
            .map((model) => model.toDomain())
            .toList();
        return Right(articles);
      } on ServerException catch (e) {
        return Left(ServerFailure(
          message: e.message,
          statusCode: e.statusCode,
        ));
      } on NetworkException catch (e) {
        return Left(NetworkFailure(message: e.message));
      } catch (e) {
        return Left(ServerFailure(message: e.toString()));
      }
    } else {
      return const Left(NetworkFailure(message: 'No internet connection'));
    }
  }
}