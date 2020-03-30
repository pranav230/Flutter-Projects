import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  int _totalScore = 0;

  List<Object> colorTheme = [
    #f39c12,
    #f4d03f,
    #dc7633,
    #e59866,
  ];

  static const _questions = [
    {
      'questionText': 'First Question',
      'answers': [
        {'text': 'ans1', 'score': 1},
        {'text': 'ans2', 'score': 0},
        {'text': 'ans3', 'score': 0},
        {'text': 'ans4', 'score': 0}
      ]
    },
    {
      'questionText': 'Second Question',
      'answers': [
        {'text': 'ans11', 'score': 0},
        {'text': 'ans22', 'score': 1},
        {'text': 'ans33', 'score': 0},
        {'text': 'ans44', 'score': 0}
      ]
    },
    {
      'questionText': 'Third Question',
      'answers': [
        {'text': 'ans111', 'score': 0},
        {'text': 'ans222', 'score': 0},
        {'text': 'ans333', 'score': 1},
        {'text': 'ans444', 'score': 0}
      ]
    },
  ];

  void _buttonPressed(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = (_questionIndex + 1);
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
          backgroundColor: Color(0xFFD35400),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                buttonPressed: _buttonPressed,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore),
      ),
    );
  }
}