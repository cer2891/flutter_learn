import 'package:flutter/cupertino.dart';
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
        backgroundColor: Colors.teal,
        body: SafeArea(
          // наглядно показано тут https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e
          // цвета,иконки https://www.materialpalette.com/icons
          // шрифты https://fonts.google.com/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/avatar.jpg'),
              ),
              Text(
                'Sergey Programm',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SansPro',
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                height: 10,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
//                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+7 999-777-56-78',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'SansPro',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
//                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'test@yandex.ru',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'SansPro',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Row(
//children: [
//Icon(
//Icons.phone,
//color: Colors.teal,
//),
//SizedBox(
//width: 20,
//),
//Text(
//'+7 999-777-56-78',
//style: TextStyle(
//color: Colors.teal.shade900,
//fontFamily: 'SansPro',
//fontSize: 20,
//),
//),
//],
//),

//child: Row(
//children: [
//Icon(
//Icons.email,
//color: Colors.teal,
//),
//SizedBox(
//width: 20,
//),
//Text(
//'test@yandex.ru',
//style: TextStyle(
//color: Colors.teal.shade900,
//fontFamily: 'SansPro',
//fontSize: 20,
//),
//),
//],
//),
