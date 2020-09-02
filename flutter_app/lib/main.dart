import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 3;
  int rightDiceNumber = 2;

  void NumberDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: FlatButton(
                onPressed: () {
                  NumberDice();
                },
                child:
                    Image(image: AssetImage('images/dice$leftDiceNumber.png'))),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
                onPressed: () {
                  NumberDice();
                },
                child: Image(
                    image: AssetImage('images/dice$rightDiceNumber.png'))),
          ),
        ],
      ),
    );
  }
}
