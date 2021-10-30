import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;
  Question(this.questionText);
// This is a widget build for the Question and its styling
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(60),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ));
  }
}
