part of 'news_bloc.dart';

/// States for the News BLoC
abstract class NewsState extends Equatable {
  const NewsState();

  @override
  List<Object?> get props => [];
}

/// Initial state
class NewsInitial extends NewsState {
  const NewsInitial();
}

/// Loading state
class NewsLoading extends NewsState {
  const NewsLoading();
}

/// Loaded state with articles
class NewsLoaded extends NewsState {
  final List<Article> articles;
  final bool isSearchResult;
  final String? searchQuery;

  const NewsLoaded({
    required this.articles,
    this.isSearchResult = false,
    this.searchQuery,
  });

  @override
  List<Object?> get props => [articles, isSearchResult, searchQuery];

  NewsLoaded copyWith({
    List<Article>? articles,
    bool? isSearchResult,
    String? searchQuery,
  }) {
    return NewsLoaded(
      articles: articles ?? this.articles,
      isSearchResult: isSearchResult ?? this.isSearchResult,
      searchQuery: searchQuery ?? this.searchQuery,
    );
  }
}

/// Error state
class NewsError extends NewsState {
  final String message;

  const NewsError({required this.message});

  @override
  List<Object> get props => [message];
}