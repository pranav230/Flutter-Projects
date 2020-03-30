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

  List<Object> colorTheme = [
    #f39c12,
    #f4d03f,
    #dc7633,
    #e59866,
  ];

  static const _questions = [
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
            : Result(),
      ),
    );
  }
}
