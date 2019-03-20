import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_app/model/Articles.dart';
import 'package:http/http.dart' as http;


class ApiService {

  static Future<List<Articles>> fetchPhotos(http.Client client) async {
    final response =
    await client.get('https://newsapi.org/v2/everything?sources=cbc-news&apiKey=ee5eaccd9e8a451089e664ab00b1b1db');
    return compute(parsePhotos, response.body);
  }

  // A function that converts a response body into a List<Photo>
  static List<Articles> parsePhotos(String responseBody) {
    final parsed = json.decode(responseBody);
    var streetsFromJson = parsed['articles'];

    var articles = new List<Articles>();

    if (streetsFromJson!= null) {
      streetsFromJson.forEach((v) {
        articles.add(new Articles.fromJson(v));
      });
    }
    return articles;
  }
}