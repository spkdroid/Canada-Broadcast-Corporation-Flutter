/// Core error classes for the application
library core_error;

import 'package:equatable/equatable.dart';

/// Base class for all failures in the application
abstract class Failure extends Equatable {
  const Failure();
  
  @override
  List<Object> get props => [];
}

/// Server-related failures
class ServerFailure extends Failure {
  final String message;
  final int? statusCode;
  
  const ServerFailure({
    required this.message,
    this.statusCode,
  });
  
  @override
  List<Object> get props => [message, statusCode ?? 0];
}

/// Network-related failures
class NetworkFailure extends Failure {
  final String message;
  
  const NetworkFailure({required this.message});
  
  @override
  List<Object> get props => [message];
}

/// Cache-related failures
class CacheFailure extends Failure {
  final String message;
  
  const CacheFailure({required this.message});
  
  @override
  List<Object> get props => [message];
}

/// Validation-related failures
class ValidationFailure extends Failure {
  final String message;
  
  const ValidationFailure({required this.message});
  
  @override
  List<Object> get props => [message];
}

/// Exception classes for handling errors at the data layer
class ServerException implements Exception {
  final String message;
  final int? statusCode;
  
  const ServerException({
    required this.message,
    this.statusCode,
  });
}

class NetworkException implements Exception {
  final String message;
  
  const NetworkException({required this.message});
}

class CacheException implements Exception {
  final String message;
  
  const CacheException({required this.message});
}