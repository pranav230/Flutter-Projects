import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Button 2'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Button 3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}