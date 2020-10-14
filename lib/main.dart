import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
        {"text": "Good", "score": 1},
        {"text": "Bad", "score": 6},
        {"text": "So so", "score": 4},
        {
          "text": "I don't know really this is a very difficult question!",
          "score": 9
        },
      ],
    },
    {
      "questionText": "What is your name? This is question numer 2.",
      "answers": [
        {"text": "Jack", "score": 1},
        {"text": "John", "score": 4},
        {"text": "Lui", "score": 7},
        {"text": "Sam", "score": 9},
      ],
    },
    {
      "questionText":
          "Where are you from? This is a very very very long question just for testing purposes! By the way this is a question numer 3.",
      "answers": [
        {"text": "USA", "score": 1},
        {"text": "Europe", "score": 3},
        {"text": "Asia", "score": 7},
        {"text": "Africa", "score": 9},
      ],
    },
    {
      "questionText":
          "What is your hobby? This is a question number 4, again just for testing purposes",
      "answers": [
        {"text": "Programming", "score": 1},
        {"text": "Singing", "score": 4},
        {"text": "Sleeping", "score": 7},
        {"text": "Drinking", "score": 9},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

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
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
