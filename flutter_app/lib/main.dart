import 'package:Learn/questions.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
// ignore: avoid_web_libraries_in_flutter
//import 'dart:js';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scopeKeeper = [];
  QuizBrain quizBrain = QuizBrain();
  // List<Question> questionBank=[
  //   Question(q: 'You can lead a cow down stairs but not up stairs.',a: false),
  //   Question(q: 'Approximately one quarter of human bones are in the feet.',a: true),
  //   Question(q: 'A slug\'s blood is green.',a: true),
  // ];

  void checkAnswer(bool userPickAnswer)
  {
    quizBrain.nextNumber();
    setState(() {

      if(quizBrain.isFinished()==true)
        {
          Alert(
            context: context,
            title: 'Усе',
            desc: 'Конец теста',
          ).show();

          //TODO Step 4 Part C - reset the questionNumber,
          quizBrain.reset();

          //TODO Step 4 Part D - empty out the scoreKeeper.
          scopeKeeper = [];
        }
      else {
        if (quizBrain.getQuestionAnswer() == userPickAnswer) {
          scopeKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scopeKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                  checkAnswer(true);
                },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkAnswer(false);
              },
            ),
          ),
        ),
        Row(
          children: scopeKeeper,
        ),
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
