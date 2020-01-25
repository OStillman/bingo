import 'package:flutter/material.dart';
import 'helpers/constants.dart';
import "home.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bingo!',
      theme: ThemeData(
        primaryColor: colourMain,
      ),
      home: MyHomePage(title: 'Welcome To Bingo!'),
    );
  }
}

