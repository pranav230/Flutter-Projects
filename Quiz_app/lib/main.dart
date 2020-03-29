import 'package:first_app/answer.dart';
import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  static const questions = [
    {
      'questionText': 'First Question',
      'answers': ['ans1', 'ans2', 'ans3', 'ans4']
    },
    {
      'questionText': 'Second Question',
      'answers': ['ans11', 'ans22', 'ans33', 'ans44']
    },
    {
      'questionText': 'Third Question',
      'answers': ['ans111', 'ans222', 'ans333', 'ans444']
    },
  ];

  void _buttonPressed() {
    setState(() {
      _questionIndex = (_questionIndex + 1) % (questions.length);
    });
    print('Button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFecf0f1),
        appBar: AppBar(
          title: Text('Quiz App'),
          backgroundColor: Color(0xFFF39C12),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer){
              return Answer(_buttonPressed, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
