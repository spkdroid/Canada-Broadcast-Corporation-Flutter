import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../../core/utils/helpers.dart';
import '../../domain/entities/article.dart';

/// Widget for displaying a single article item
class ArticleItemWidget extends StatelessWidget {
  final Article article;
  final VoidCallback? onTap;

  const ArticleItemWidget({
    Key? key,
    required this.article,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 0),
      elevation: 2,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Article Image
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: article.imageUrl != null && 
                         UrlHelper.isValidUrl(article.imageUrl)
                      ? CachedNetworkImage(
                          imageUrl: article.imageUrl!,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => Container(
                            color: Colors.grey[300],
                            child: const Icon(
                              Icons.image,
                              color: Colors.grey,
                            ),
                          ),
                          errorWidget: (context, url, error) => Container(
                            color: Colors.grey[300],
                            child: const Icon(
                              Icons.broken_image,
                              color: Colors.grey,
                            ),
                          ),
                        )
                      : Container(
                          color: Colors.grey[300],
                          child: const Icon(
                            Icons.article,
                            color: Colors.grey,
                          ),
                        ),
                ),
              ),
              const SizedBox(width: 12),
              
              // Article Content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      StringHelper.getDisplayText(
                        article.title,
                        'No title available',
                      ),
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    
                    // Description
                    if (article.description != null) ...[
                      Text(
                        StringHelper.truncate(
                          article.description!,
                          120,
                        ),
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.grey[600],
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 8),
                    ],
                    
                    // Metadata
                    Row(
                      children: [
                        if (article.source?.name != null) ...[
                          Icon(
                            Icons.source,
                            size: 14,
                            color: Colors.grey[500],
                          ),
                          const SizedBox(width: 4),
                          Flexible(
                            child: Text(
                              article.source!.name,
                              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                color: Colors.grey[600],
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                        if (article.source?.name != null && article.publishedAt != null) ...[
                          const SizedBox(width: 8),
                          Text(
                            '•',
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                          const SizedBox(width: 8),
                        ],
                        if (article.publishedAt != null) ...[
                          Icon(
                            Icons.access_time,
                            size: 14,
                            color: Colors.grey[500],
                          ),
                          const SizedBox(width: 4),
                          Flexible(
                            child: Text(
                              DateHelper.getRelativeTime(article.publishedAt),
                              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                color: Colors.grey[600],
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}