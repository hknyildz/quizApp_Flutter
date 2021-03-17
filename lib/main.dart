import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

//void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': "What\'s your favorite color?",
        'answers': ["black", "red", "green", "white"]
      },
      {
        'questionText': "What\'s your favorite animal?",
        'answers': ["rabbit", "snake", "elephant", "lion"]
      },
      {
        'questionText': "Who\'s your favorite singer?",
        'answers': ["Rihanna", "Shakira", "Beyonce", "Lady Gaga"]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
          backgroundColor: (Colors.orangeAccent),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            Answer("Answer 1", _answerQuestion),
            Answer("Answer 2", _answerQuestion),
            Answer("Answer 3", _answerQuestion),
            // ElevatedButton(
            //   child: Text("Answer 2"),
            //   onPressed: () => print(
            //     "Answer 2 Chosen!",
            //   ),
            // ),
            // RaisedButton(
            //     child: Text("Answer 3"),
            //     onPressed: () {
            //       print("Answer 3 Chosen!");
            //     },
            //     color: Colors.amberAccent[700]),
          ],
        ),
      ),
    );
  }
}
