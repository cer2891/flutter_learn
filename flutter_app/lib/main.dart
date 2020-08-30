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
          // наглядно показано тут https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e
          child: Row(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween ,// расположение между
            // verticalDirection: VerticalDirection.up, снизу начинаются
            crossAxisAlignment: CrossAxisAlignment.stretch, // по вертикали
            children: [
              Container(
//                height: 100,
//                width: double.infinity,
                width: 30,
                color: Colors.white,
                child: Text('Container 1'),
              ),
              SizedBox(
//                height: 20,
                width: 20,
              ),
              Container(
                height: 100,
//                width: 100,
//                width: double.infinity,
                color: Colors.white60,
                child: Text('Container 2'),
              ),
              Container(
                height: 100,
//                width: 100,
//                width: double.infinity,
                color: Colors.red,
                child: Text('Container 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
