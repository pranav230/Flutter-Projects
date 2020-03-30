import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(right: 15, left: 15, top: 5, bottom: 5),
      child: RaisedButton(
        textColor: Color(0xFFecf0f1),
        child: Text(answerText),
        onPressed: selectHandler,
        color: Color(0xFFF39C12),
      ),
    );
  }
}
