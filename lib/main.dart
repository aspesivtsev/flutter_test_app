import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

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
      _questionIndex++;
    });

    print("Q index is " + _questionIndex.toString());
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "How are you? This is question numer 1.",
      "What is your name? This is question numer 2.",
      "This is a very very very long question just for testing purposes! By the way this is a question numer 3.",
      "This is a question number 4, again just for testing purposes",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Serious mobile application"),
          centerTitle: true,
          backgroundColor: Colors.pink,
          //backgroundColor: Color(0xFF151026),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions.elementAt(
                  _questionIndex), //this is equivalent to "questions[questionIndex],"
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
