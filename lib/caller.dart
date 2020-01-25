import 'package:flutter/material.dart';
import 'helpers/constants.dart';

class CallerPage extends StatefulWidget {
  @override
  _CallerPageState createState() => _CallerPageState();
}

class _CallerPageState extends State<CallerPage> {
  List<int> generateNumbers() => List<int>.generate(100, (i) => i + 1);
  List<int> calledNumbers = [7, 9, 21];

  @override
  Widget build(BuildContext context) {
    final currentNumber = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        "1",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 40),
      ),
    );

    final numberGrid = new GridView.count(
      crossAxisCount: 10,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: generateNumbers().map((int i) {
        bool _there = false;
        Color _thisColor = colorBody;
        final numbersCalledLength = calledNumbers.length;
        for (int calledNumberIndex = 0; calledNumberIndex <
            numbersCalledLength; calledNumberIndex++) {
          if (calledNumbers[calledNumberIndex] == i) {
            _there = true;
          }
        }
        if (_there) {
          _thisColor = Colors.black;
        }
        if (true) {
          return Text(
            i.toString(),
            style: TextStyle(color: _thisColor),
          );
        }
      }).toList(),
    );

    final nextNumber =
    FlatButton(
        onPressed: () {},
        color: colorBody,
        child: Text(
          "Next Number",
          style: TextStyle(color: Colors.white),
        ),
    );

      return Scaffold(
      backgroundColor: colorBody,
      appBar: AppBar(
        title: Text("Bingo Caller"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[currentNumber, numberGrid, nextNumber],
        ),
      ),
    );
  }
}
