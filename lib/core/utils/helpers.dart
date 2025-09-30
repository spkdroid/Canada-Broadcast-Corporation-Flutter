import 'package:intl/intl.dart';

/// Utility class for date formatting and parsing
class DateHelper {
  static const String _apiDateFormat = "yyyy-MM-ddTHH:mm:ssZ";
  static const String _displayDateFormat = "MMM dd, yyyy • hh:mm a";
  
  /// Parse date from API format
  static DateTime? parseApiDate(String? dateString) {
    if (dateString == null || dateString.isEmpty) return null;
    
    try {
      return DateTime.parse(dateString);
    } catch (e) {
      return null;
    }
  }
  
  /// Format date for display
  static String formatDisplayDate(DateTime? date) {
    if (date == null) return '';
    
    try {
      return DateFormat(_displayDateFormat).format(date);
    } catch (e) {
      return '';
    }
  }
  
  /// Get relative time (e.g., "2 hours ago")
  static String getRelativeTime(DateTime? date) {
    if (date == null) return '';
    
    final now = DateTime.now();
    final difference = now.difference(date);
    
    if (difference.inDays > 7) {
      return formatDisplayDate(date);
    } else if (difference.inDays > 0) {
      return '${difference.inDays} ${difference.inDays == 1 ? 'day' : 'days'} ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} ${difference.inHours == 1 ? 'hour' : 'hours'} ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} ${difference.inMinutes == 1 ? 'minute' : 'minutes'} ago';
    } else {
      return 'Just now';
    }
  }
}

/// Utility class for string operations
class StringHelper {
  /// Check if string is null or empty
  static bool isNullOrEmpty(String? value) {
    return value == null || value.trim().isEmpty;
  }
  
  /// Get display text or fallback
  static String getDisplayText(String? value, [String fallback = '']) {
    return isNullOrEmpty(value) ? fallback : value!.trim();
  }
  
  /// Truncate text to specified length
  static String truncate(String text, int maxLength, [String suffix = '...']) {
    if (text.length <= maxLength) return text;
    return '${text.substring(0, maxLength - suffix.length)}$suffix';
  }
}

/// Utility class for URL validation and formatting
class UrlHelper {
  /// Check if URL is valid
  static bool isValidUrl(String? url) {
    if (StringHelper.isNullOrEmpty(url)) return false;
    
    try {
      final uri = Uri.parse(url!);
      return uri.hasScheme && (uri.scheme == 'http' || uri.scheme == 'https');
    } catch (e) {
      return false;
    }
  }
  
  /// Get domain from URL
  static String? getDomain(String? url) {
    if (!isValidUrl(url)) return null;
    
    try {
      final uri = Uri.parse(url!);
      return uri.host;
    } catch (e) {
      return null;
    }
  }
}