import './question.dart';
import 'package:flutter/material.dart';
import './answer.dart';

class Start extends StatelessWidget {
  final int toggler;
  final Function startHandler;

  Start(this.toggler, this.startHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question('The answers are based on a Pattern'),
        Question('Find It!'),
        Answer(startHandler, 'Start Quiz'),
      ],
    );
  }
}
