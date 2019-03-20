import 'package:flutter/material.dart';
import 'package:flutter_app/model/Articles.dart';

class NewsList extends StatelessWidget {
  final List<Articles> article;

  NewsList({Key key, this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ListView.builder(itemBuilder: (context, index)  {

      try {
        return ListTile(
          title: Image.network(article[index].urlToImage),
          subtitle: Text(article[index].description.toString()),
        );
      } catch(e) {

      }
    }
    );
  }
}