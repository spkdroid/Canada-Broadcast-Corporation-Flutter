part of 'news_bloc.dart';

/// Events for the News BLoC
abstract class NewsEvent extends Equatable {
  const NewsEvent();

  @override
  List<Object?> get props => [];
}

/// Event to load news articles
class LoadNewsArticles extends NewsEvent {
  const LoadNewsArticles();
}

/// Event to refresh news articles
class RefreshNewsArticles extends NewsEvent {
  const RefreshNewsArticles();
}

/// Event to search for articles
class SearchNewsArticles extends NewsEvent {
  final String query;

  const SearchNewsArticles({required this.query});

  @override
  List<Object> get props => [query];
}

/// Event to clear search
class ClearSearch extends NewsEvent {
  const ClearSearch();
}