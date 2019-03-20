import 'package:flutter/material.dart';
import 'package:flutter_app/page/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'CBC News';
    return MaterialApp(
      title: appTitle,
      home: HomePage(title: appTitle),
    );
  }
}

