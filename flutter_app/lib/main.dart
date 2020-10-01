import 'file:///E:/flutter_proj/learn_udemy/flutter_app/lib/screens/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primaryColor: Color(0xFF1d2136),
      //   scaffoldBackgroundColor: Color(0xFF323244),
      //   textTheme: TextTheme(body1: TextStyle( color: Colors.white,)),
      // ),
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF1d2136),
          scaffoldBackgroundColor: Color(0xFF1d2136),
      ),
      home: InputPage(),
    );
  }
}

