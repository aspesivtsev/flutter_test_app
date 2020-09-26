import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Answer chosen!");
  }

  @override
  Widget build(BuildContext context) {
    var questions = ["How are you", "What is your name"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Serious mobile application"),
        ),
        body: Column(
          children: <Widget>[
            Text(
                "This is a very long question to ask, so we need to check how it is shown on the screen!"),
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
