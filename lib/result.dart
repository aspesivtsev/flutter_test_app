import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resultHandler;

  Result(this.resultScore, this.resultHandler);

  String get resultPhrase {
    //Это типа динамической функции, но не функция
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = "You are awesome and innocent!";
    } else if (resultScore <= 18) {
      resultText = "You are pretty likeable!";
    } else if (resultScore <= 25) {
      resultText = "You are... strange!";
    } else {
      resultText = "You are so bad!";
    }
    return resultText + "\n" + "Your score is: " + resultScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            FlatButton(
              onPressed: resultHandler,
              child: Text(
                "RESTART",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 55,
                  backgroundColor: Colors.amber,
                ),
              ),
              textColor: Colors.pink,
            )
          ],
        ),
      ),
    );
  }
}
