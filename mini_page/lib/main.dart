import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mini Page',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        accentColor: Colors.white,
        fontFamily: 'Merriweather',
        buttonColor: Colors.black,
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontFamily: 'Merriwheather',
              ),
              button: TextStyle(
                color: Colors.white,
              ),
            ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final _question = ['Are you suffering from ', 'Do you have '];
  var _rand = (new Random()).nextInt(2);
  String _disease = 'fever'; //will be derived from somewhere

  @override
  Widget build(BuildContext context) {
    final ht =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(
          top: ht * 0.35,
          bottom: ht * 0.35,
        ),
        height: ht * 0.3,
        child: Card(
          elevation: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                child: Text(
                  '${_question[_rand]}$_disease',
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    fontFamily: Theme.of(context).textTheme.title.fontFamily,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {},
                    child: Text(
                      'Yes',
                      style: TextStyle(
                          color: Theme.of(context).textTheme.button.color),
                    ),
                  ),
                  Divider(
                    indent: 20,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text(
                      'No',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.button.color,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ButtonTheme(
                minWidth: MediaQuery.of(context).size.width * 0.5,
                buttonColor: Theme.of(context).buttonColor,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'What\'s it',
                    style: TextStyle(
                      color: Theme.of(context).textTheme.button.color,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
