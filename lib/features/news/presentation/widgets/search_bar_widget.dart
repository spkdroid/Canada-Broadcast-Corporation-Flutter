import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/news_bloc.dart';

/// Search bar widget for searching news articles
class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  final TextEditingController _controller = TextEditingController();
  bool _isSearching = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onSearchSubmitted(String query) {
    if (query.trim().isNotEmpty) {
      context.read<NewsBloc>().add(SearchNewsArticles(query: query.trim()));
      setState(() {
        _isSearching = true;
      });
    }
  }

  void _onClearSearch() {
    _controller.clear();
    context.read<NewsBloc>().add(const ClearSearch());
    setState(() {
      _isSearching = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Search news articles...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _isSearching
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: _onClearSearch,
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Theme.of(context).colorScheme.surfaceVariant,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
              ),
              onSubmitted: _onSearchSubmitted,
              textInputAction: TextInputAction.search,
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            onPressed: () => _onSearchSubmitted(_controller.text),
            icon: const Icon(Icons.search),
            tooltip: 'Search',
          ),
        ],
      ),
    );
  }
}