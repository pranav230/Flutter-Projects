import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  var questions = ['First Question', 'Second Question', 'Third Question'];

  void buttonPressed() {
    setState(() {
      questionIndex = (questionIndex + 1)%(questions.length);
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
            Text(
              questions[questionIndex],
            ),
            RaisedButton(
              child: Text('Button 1'),
              onPressed: buttonPressed,
            ),
            RaisedButton(
              child: Text('Button 2'),
              onPressed: buttonPressed,
            ),
            RaisedButton(
              child: Text('Button 3'),
              onPressed: buttonPressed,
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