import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final Function buttonPressed;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  Quiz({
    @required this.buttonPressed,
    @required this.questions,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map( (answer) {
          return Answer(() => buttonPressed(score :answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
