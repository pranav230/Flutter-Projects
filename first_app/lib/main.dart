import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('New App'),
          backgroundColor: Color(0xFF45B39D),
        ),
        body: Text('Body of the App'),
      ),
    );
  }
}
