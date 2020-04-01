import 'widgets/userTransaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            Container(
              width: 100,
              child: Card(
                child: Text('Test Data'),
              ),
            ),
            UserTransaction(),
          ],
        ),
      ),
    );
  }
}
