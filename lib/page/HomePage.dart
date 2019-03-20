import 'package:flutter/material.dart';
import 'package:flutter_app/model/Articles.dart';
import 'package:flutter_app/service/ApiService.dart';
import 'package:flutter_app/widget/NewsList.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  final String title;

  HomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FutureBuilder<List<Articles>>(
        future: ApiService.fetchNewsArticles(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? NewsList(article: snapshot.data)
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}