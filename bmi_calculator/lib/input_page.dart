import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: NewCard(colour: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: NewCard(colour: Color(0xFF1D1E33)),
                ),
              ],
            )),
            Expanded(
              child: NewCard(colour: Color(0xFF1D1E33)),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: NewCard(colour: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: NewCard(colour: Color(0xFF1D1E33)),
                ),
              ],
            )),
          ],
        ));
  }
}

class NewCard extends StatelessWidget {
  final Color colour;

  NewCard({@required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF1D1E33),
      ),
      child: null,
    );
  }
}
