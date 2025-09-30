import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../bloc/news_bloc.dart';
import '../widgets/news_list_view.dart';
import '../widgets/search_bar_widget.dart';

/// Home page for displaying news articles
class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NewsBloc>()..add(const LoadNewsArticles()),
      child: const NewsPageView(),
    );
  }
}

class NewsPageView extends StatelessWidget {
  const NewsPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CBC News'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
      ),
      body: Column(
        children: [
          const SearchBarWidget(),
          Expanded(
            child: BlocBuilder<NewsBloc, NewsState>(
              builder: (context, state) {
                if (state is NewsInitial || state is NewsLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is NewsLoaded) {
                  if (state.articles.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.article_outlined,
                            size: 64,
                            color: Colors.grey[400],
                          ),
                          const SizedBox(height: 16),
                          Text(
                            state.isSearchResult 
                                ? 'No articles found for "${state.searchQuery}"'
                                : 'No articles available',
                            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: Colors.grey[600],
                            ),
                          ),
                          if (state.isSearchResult) ...[
                            const SizedBox(height: 16),
                            ElevatedButton(
                              onPressed: () {
                                context.read<NewsBloc>().add(const ClearSearch());
                              },
                              child: const Text('Show All News'),
                            ),
                          ],
                        ],
                      ),
                    );
                  }
                  
                  return RefreshIndicator(
                    onRefresh: () async {
                      context.read<NewsBloc>().add(const RefreshNewsArticles());
                    },
                    child: NewsListView(articles: state.articles),
                  );
                } else if (state is NewsError) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.error_outline,
                            size: 64,
                            color: Colors.red[400],
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Error loading news',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            state.message,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.grey[600],
                            ),
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {
                              context.read<NewsBloc>().add(const LoadNewsArticles());
                            },
                            child: const Text('Retry'),
                          ),
                        ],
                      ),
                    ),
                  );
                }
                
                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }
}