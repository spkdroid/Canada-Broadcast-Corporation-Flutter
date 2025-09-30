import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../../core/utils/helpers.dart';
import '../../domain/entities/article.dart';

/// Page for displaying article details
class ArticleDetailPage extends StatelessWidget {
  final Article article;

  const ArticleDetailPage({
    Key? key,
    required this.article,
  }) : super(key: key);

  Future<void> _launchUrl(String? url) async {
    if (url != null && UrlHelper.isValidUrl(url)) {
      final uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article Details'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
        actions: [
          if (article.url != null)
            IconButton(
              onPressed: () => _launchUrl(article.url),
              icon: const Icon(Icons.open_in_browser),
              tooltip: 'Open in browser',
            ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Article Image
            if (article.imageUrl != null && UrlHelper.isValidUrl(article.imageUrl))
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: CachedNetworkImage(
                    imageUrl: article.imageUrl!,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Container(
                      color: Colors.grey[300],
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                    errorWidget: (context, url, error) => Container(
                      color: Colors.grey[300],
                      child: const Icon(
                        Icons.broken_image,
                        size: 64,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            
            if (article.imageUrl != null && UrlHelper.isValidUrl(article.imageUrl))
              const SizedBox(height: 16),
            
            // Article Title
            Text(
              StringHelper.getDisplayText(
                article.title,
                'No title available',
              ),
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            
            // Article Metadata
            Wrap(
              spacing: 16,
              runSpacing: 8,
              children: [
                if (article.source?.name != null)
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.source,
                        size: 16,
                        color: Colors.grey[600],
                      ),
                      const SizedBox(width: 4),
                      Text(
                        article.source!.name,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                if (article.author != null && article.author!.isNotEmpty)
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.person,
                        size: 16,
                        color: Colors.grey[600],
                      ),
                      const SizedBox(width: 4),
                      Text(
                        article.author!,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                if (article.publishedAt != null)
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.access_time,
                        size: 16,
                        color: Colors.grey[600],
                      ),
                      const SizedBox(width: 4),
                      Text(
                        DateHelper.formatDisplayDate(article.publishedAt),
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
              ],
            ),
            const SizedBox(height: 16),
            
            // Article Description
            if (article.description != null && article.description!.isNotEmpty) ...[
              Text(
                article.description!,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 16),
            ],
            
            // Article Content
            if (article.content != null && article.content!.isNotEmpty) ...[
              Text(
                article.content!,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 24),
            ],
            
            // Read Full Article Button
            if (article.url != null)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () => _launchUrl(article.url),
                  icon: const Icon(Icons.open_in_browser),
                  label: const Text('Read Full Article'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}