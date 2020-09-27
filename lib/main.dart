import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
    });

    print("Q index is " + questionIndex.toString());
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "How are you?",
      "What is your name?",
      "How old are you?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Serious mobile application"),
        ),
        body: Column(
          children: <Widget>[
            Text(
              questions.elementAt(
                  questionIndex), //this is equivalent to "questions[questionIndex],"
            ),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
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
