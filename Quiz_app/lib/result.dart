import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore,this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore >= 2)
      resultText = 'Congrats! You did it.';
    else if (resultScore == 1)
      resultText = 'You atLeast got one of it';
    else
      resultText = 'You are not of any use';

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            textColor: Color(0xFFf39c12),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
