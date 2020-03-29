import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void buttonPressed() {
    print('You have pressed the answer button 1');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('New App'),
          backgroundColor: Color(0xFF45B39D),
        ),
        body: Column(
          children: [
            Text('many widgets displayed'),
            RaisedButton(
              child: Text('Button 1'),
              onPressed: buttonPressed,
            ),
            RaisedButton(
              child: Text('Button 2'),
              onPressed: () => print('Button 2 pressed'),
            ),
            RaisedButton(
              child: Text('Button 3'),
              onPressed: () {
                print('Button 3 pressed');
              },
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