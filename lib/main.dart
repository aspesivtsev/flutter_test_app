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
      "How are you?",
      "What is your name?",
      "This is a very very very long question just for testing purposes!",
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
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                child: Text("Answer 1"),
                onPressed: _answerQuestion,
                color: Colors.limeAccent[400],
              ),
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () => print("Answer 2 is chosen!"),
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: () {
                //...
                print("Answer 3 is chosen!");
              },
            ),
          ],
        ),
      ),
    );
  }
}
