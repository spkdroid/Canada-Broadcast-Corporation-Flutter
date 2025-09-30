import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../domain/entities/article.dart';
import '../pages/article_detail_page.dart';
import 'article_item_widget.dart';

/// List view for displaying news articles
class NewsListView extends StatelessWidget {
  final List<Article> articles;

  const NewsListView({
    Key? key,
    required this.articles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      padding: const EdgeInsets.all(8.0),
      itemBuilder: (context, index) {
        final article = articles[index];
        return ArticleItemWidget(
          article: article,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ArticleDetailPage(article: article),
              ),
            );
          },
        );
      },
    );
  }
}