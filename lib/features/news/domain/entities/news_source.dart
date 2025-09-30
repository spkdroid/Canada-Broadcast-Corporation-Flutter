import 'package:equatable/equatable.dart';

/// Domain entity representing a news source
class NewsSource extends Equatable {
  final String? id;
  final String name;

  const NewsSource({
    this.id,
    required this.name,
  });

  @override
  List<Object?> get props => [id, name];
}