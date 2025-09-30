import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import '../error/failures.dart';

/// Network service configuration and Dio setup
@module
abstract class NetworkModule {
  @lazySingleton
  Dio dio() {
    final dio = Dio();
    
    dio.options = BaseOptions(
      baseUrl: 'https://newsapi.org/v2/',
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );
    
    // Add logging interceptor
    dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      logPrint: (object) => Logger().d(object),
    ));
    
    return dio;
  }
  
  @lazySingleton
  Logger logger() => Logger(
    printer: PrettyPrinter(
      methodCount: 2,
      errorMethodCount: 8,
      lineLength: 120,
      colors: true,
      printEmojis: true,
      printTime: true,
    ),
  );
}

/// Network info for checking connectivity
abstract class NetworkInfo {
  Future<bool> get isConnected;
}

@LazySingleton(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  @override
  Future<bool> get isConnected async {
    // Simple connectivity check - in a real app you might use connectivity_plus
    try {
      final dio = Dio();
      await dio.get('https://www.google.com');
      return true;
    } catch (_) {
      return false;
    }
  }
}

/// Helper class for handling Dio exceptions
class NetworkExceptionHandler {
  static Exception handleDioException(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const NetworkException(message: 'Connection timeout');
      case DioExceptionType.badResponse:
        return ServerException(
          message: exception.response?.data?['message'] ?? 'Server error',
          statusCode: exception.response?.statusCode,
        );
      case DioExceptionType.cancel:
        return const NetworkException(message: 'Request cancelled');
      case DioExceptionType.connectionError:
        return const NetworkException(message: 'No internet connection');
      case DioExceptionType.badCertificate:
        return const NetworkException(message: 'Certificate error');
      case DioExceptionType.unknown:
      default:
        return NetworkException(
          message: exception.message ?? 'Unknown network error',
        );
    }
  }
}