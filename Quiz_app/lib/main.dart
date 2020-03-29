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

  var questions = ['First Question', 'Second Question', 'Third Question'];

  void _buttonPressed() {
    setState(() {
      _questionIndex = (_questionIndex + 1)%(questions.length);
    });
    print('Button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('New App'),
          backgroundColor: Color(0xFF45B39D),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Button 1'),
              onPressed: _buttonPressed,
            ),
            RaisedButton(
              child: Text('Button 2'),
              onPressed: _buttonPressed,
            ),
            RaisedButton(
              child: Text('Button 3'),
              onPressed: _buttonPressed,
            ),
            RaisedButton(
              child: Text('Button 4'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}