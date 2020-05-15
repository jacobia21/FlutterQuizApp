import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 10) {
      resultText = 'You scored below 10';
    } else if (resultScore <= 15) {
      resultText = 'You scored below 15';
    } else if (resultScore <= 20) {
      resultText = 'You scored below 20';
    } else {
      resultText = 'You scored higher than 20';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: double.infinity,
          child: Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
            onPressed: resetHandler,
            textColor: Colors.blue,
            child: Text(
              'Restart Quiz',
            )),
      ],
    );
  }
}
