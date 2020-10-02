import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  //pointer to the funtion from _answerQuestion function from main module

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          "Answer 1",
          style: TextStyle(fontSize: 22),
        ),
        onPressed: selectHandler,
        color: Colors.limeAccent[400],
        textColor: Colors.black,
      ),
    );
  }
}
