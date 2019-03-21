import 'package:flutter/material.dart';
import 'package:flutter_app/model/Articles.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  Articles information;

  DetailPage(Articles article) {
    information = article;
  } //(Articles art);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Center(
          child: Column(children: <Widget>[
        Image.network(information.urlToImage),
        Text(information.title, style: TextStyle(fontSize: 40),),
        Text(information.content),
        InkWell(
          child: new Text(information.url,style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline),)
          ,onTap: () => launch(information.url),
        )
            // Text(information.url,style: InkWell(fontFamily: url),)

      ])),
    );
  }
}
