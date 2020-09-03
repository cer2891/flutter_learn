import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded Key({int number, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$number.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Key(number: 1, color: Colors.red),
            Key(number: 2, color: Colors.orange),
            Key(number: 3, color: Colors.yellow),
            Key(number: 4, color: Colors.green),
            Key(number: 5, color: Colors.teal),
            Key(number: 6, color: Colors.blue),
            Key(number: 7, color: Colors.purpleAccent),
//                  FlatButton(
//                    color: Colors.red,
//                    onPressed: () {
//                      PlaySound(number: 1);
//                    },
//                  ),
//                  FlatButton(
//                    color: Colors.orange,
//                    onPressed: () {
//                      PlaySound(number: 2);
//                    },
//                  ),
//                  FlatButton(
//                    color: Colors.yellow,
//                    onPressed: () {
//                      PlaySound(number: 3);
//                    },
//                  ),
//                  FlatButton(
//                    color: Colors.green,
//                    onPressed: () {
//                      PlaySound(number: 4);
//                    },
//                  ),
//                  FlatButton(
//                    color: Colors.teal,
//                    onPressed: () {
//                      PlaySound(number: 5);
//                    },
//                  ),
//                  FlatButton(
//                    color: Colors.blue,
//                    onPressed: () {
//                      PlaySound(number: 6);
//                    },
//                  ),
//                  FlatButton(
//                    color: Colors.purpleAccent,
//                    onPressed: () {
//                      PlaySound(number: 7);
//                    },
//                  ),
          ]),
        ),
      ),
    );
  }
}
