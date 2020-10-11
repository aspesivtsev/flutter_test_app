import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  //pointer to the funtion from _answerQuestion function from main module

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    var container = Container(
      width: double.infinity,
      margin: EdgeInsets.all(1),
      padding: EdgeInsets.all(0),
      height: 60,
      child: new MaterialButton(
        //used RaisedButton but RaisedButton does not have height property for button
        child: Text(
          answerText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        onPressed: selectHandler,
        color: Colors.limeAccent[400],
        textColor: Colors.black,
      ),
    );
    return container;
  }
}
