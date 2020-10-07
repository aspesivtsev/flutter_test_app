import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  //pointer to the funtion from _answerQuestion function from main module

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          answerText,
          style: TextStyle(fontSize: 22),
        ),
        onPressed: selectHandler,
        color: Colors.limeAccent[400],
        textColor: Colors.black,
      ),
    );
  }
}
