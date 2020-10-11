import 'package:flutter/material.dart';
import './quiz.dart';

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
  final _questions = const [
    {
      "questionText": "How are you? This is question number 1.",
      "answers": [
        "Good",
        "Bad",
        "So so",
        "I don't know really this is a very difficult question!"
      ],
    },
    {
      "questionText": "What is your name? This is question numer 2.",
      "answers": ["Jack", "John", "Lui", "Sam"],
    },
    {
      "questionText":
          "Where are you from? This is a very very very long question just for testing purposes! By the way this is a question numer 3.",
      "answers": ["Europe", "Asia", "Usa", "Africa"],
    },
    {
      "questionText":
          "What is your hobby? This is a question number 4, again just for testing purposes",
      "answers": ["Drawing", "Signing", "Sleeping", "Drinking"],
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });

    print("Q index is " + _questionIndex.toString());
    if (_questionIndex < _questions.length) {
      print("We have got more questions ahead");
    } else {
      print("No questions left");
    }
  }

  @override
  Widget build(BuildContext context) {
    final dummy = ['Hello'];
    dummy.add('Maximus');
    print(dummy);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Serious Mobile Application",
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Colors.pink,
          //backgroundColor: Color(0xFF151026),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Center(
                child: Text("You did it!"),
              ),
      ),
    );
  }
}
