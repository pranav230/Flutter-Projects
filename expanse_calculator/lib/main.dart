import 'package:expanse_calculator/transaction.dart';
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
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'Eggs',
      amount: 15,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Milk',
      amount: 20,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: 100,
            child: Card(
              child: Text('Test Data'),
            ),
          ),
          Container(
            width: 100,
            child: Card(
              child: Text('TX data'),
            ),
          ),
        ],
      ),
    );
  }
}
