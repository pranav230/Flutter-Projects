import 'package:flutter/material.dart';

class NewCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;

  NewCard({@required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF1D1E33),
      ),
      child: cardChild,
    );
  }
}
