import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase{
    String resultText;

    if(resultScore == 3)
      resultText = 'Congrats! You did it.';
    else if(resultScore > 0)
      resultText = 'You atLeast got one of it';
    else
      resultText = 'You are not of any use';

    return resultText;  
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
