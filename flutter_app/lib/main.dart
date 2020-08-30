import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.all(40),
            padding: EdgeInsets.all(30),
            height: 100,
            width: 100,
            color: Colors.white,
            child: Text('Test'),
          ),
        ),
      ),
    );
  }
}

