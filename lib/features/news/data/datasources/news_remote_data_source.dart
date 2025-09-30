import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_service.dart';
import '../models/news_response_model.dart';

/// Remote data source for news articles
abstract class NewsRemoteDataSource {
  Future<NewsResponseModel> getNewsArticles();
  Future<NewsResponseModel> searchArticles(String query);
}

@LazySingleton(as: NewsRemoteDataSource)
class NewsRemoteDataSourceImpl implements NewsRemoteDataSource {
  final Dio dio;
  
  // In a real app, this should come from environment variables
  static const String _apiKey = 'ee5eaccd9e8a451089e664ab00b1b1db';
  
  NewsRemoteDataSourceImpl(this.dio);

  @override
  Future<NewsResponseModel> getNewsArticles() async {
    try {
      final response = await dio.get(
        'everything',
        queryParameters: {
          'sources': 'cbc-news',
          'apiKey': _apiKey,
          'pageSize': 50,
          'sortBy': 'publishedAt',
        },
      );

      return NewsResponseModel.fromJson(response.data);
    } on DioException catch (e) {
      throw NetworkExceptionHandler.handleDioException(e);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<NewsResponseModel> searchArticles(String query) async {
    try {
      final response = await dio.get(
        'everything',
        queryParameters: {
          'q': query,
          'sources': 'cbc-news',
          'apiKey': _apiKey,
          'pageSize': 50,
          'sortBy': 'relevancy',
        },
      );

      return NewsResponseModel.fromJson(response.data);
    } on DioException catch (e) {
      throw NetworkExceptionHandler.handleDioException(e);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}