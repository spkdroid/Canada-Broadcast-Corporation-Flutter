import 'package:flutter/material.dart';
import 'package:flutter_app/model/Articles.dart';

class DetailPage extends StatelessWidget {
  Articles A;

  DetailPage(Articles art) {
    A = art;
  } //(Articles art);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Center(
          child: Column(children: <Widget>[
        Image.network(A.urlToImage),
        Text(A.title),
        Text(A.description)
      ])),
    );
  }
}
