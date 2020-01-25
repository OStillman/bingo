import 'package:flutter/material.dart';
import 'helpers/constants.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final logo = CircleAvatar(
    backgroundColor: Colors.transparent,
    radius: bigRadius,
    child: appLogo,
  );

  @override
  Widget build(BuildContext context) {
    final bingoCallerButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushReplacementNamed(callerPageTag);
        },
        padding: EdgeInsets.all(12),
        color: colorButtons,
        child: Text(
          "Bingo Caller",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

    final bingoCardButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {},
        padding: EdgeInsets.all(12),
        color: colorButtons,
        child: Text(
          "Bingo Card",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: colorBody,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(left: 24.0, right: 24.0, top: 30.0),
          children: <Widget>[
            logo,
            SizedBox(height: buttonHeight),
            bingoCallerButton,
            bingoCardButton
          ],
        ),
      ),
    );
  }
}
