import 'package:flutter/material.dart';
import 'package:flutter_app/model/Articles.dart';

class NewsList extends StatelessWidget {
  final List<Articles> photos;

  NewsList({Key key, this.photos}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ListView.builder(itemBuilder: (context, index)  {

      try {
        return ListTile(
          title: Image.network(photos[index].urlToImage),
          subtitle: Text(photos[index].description.toString()),
        );
      } catch(e) {

      }
    }
    );
  }
}