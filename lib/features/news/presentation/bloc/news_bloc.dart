import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/article.dart';
import '../../domain/usecases/get_news_articles.dart';
import '../../domain/usecases/search_articles.dart';

part 'news_event.dart';
part 'news_state.dart';

/// BLoC for managing news state
@injectable
class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final GetNewsArticles _getNewsArticles;
  final SearchArticles _searchArticles;

  NewsBloc({
    required GetNewsArticles getNewsArticles,
    required SearchArticles searchArticles,
  })  : _getNewsArticles = getNewsArticles,
        _searchArticles = searchArticles,
        super(const NewsInitial()) {
    on<LoadNewsArticles>(_onLoadNewsArticles);
    on<RefreshNewsArticles>(_onRefreshNewsArticles);
    on<SearchNewsArticles>(_onSearchNewsArticles);
    on<ClearSearch>(_onClearSearch);
  }

  Future<void> _onLoadNewsArticles(
    LoadNewsArticles event,
    Emitter<NewsState> emit,
  ) async {
    emit(const NewsLoading());
    
    final result = await _getNewsArticles();
    
    result.fold(
      (failure) => emit(NewsError(message: failure.toString())),
      (articles) => emit(NewsLoaded(articles: articles)),
    );
  }

  Future<void> _onRefreshNewsArticles(
    RefreshNewsArticles event,
    Emitter<NewsState> emit,
  ) async {
    // Show loading only if we don't have articles yet
    if (state is! NewsLoaded) {
      emit(const NewsLoading());
    }
    
    final result = await _getNewsArticles();
    
    result.fold(
      (failure) => emit(NewsError(message: failure.toString())),
      (articles) => emit(NewsLoaded(articles: articles)),
    );
  }

  Future<void> _onSearchNewsArticles(
    SearchNewsArticles event,
    Emitter<NewsState> emit,
  ) async {
    emit(const NewsLoading());
    
    final result = await _searchArticles(event.query);
    
    result.fold(
      (failure) => emit(NewsError(message: failure.toString())),
      (articles) => emit(NewsLoaded(
        articles: articles,
        isSearchResult: true,
        searchQuery: event.query,
      )),
    );
  }

  Future<void> _onClearSearch(
    ClearSearch event,
    Emitter<NewsState> emit,
  ) async {
    // Return to normal news loading
    add(const LoadNewsArticles());
  }
}