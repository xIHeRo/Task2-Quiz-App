import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final selectHandeler;
  final String answerText;

  /** This will make the class Answer will Hold first the 
   * 1.Index of Answer inside the list of answer
   * 2. The Answer itself as a second argument
   */
  Answer(this.selectHandeler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(
          answerText,
          style: DefaultTextStyle.of(context).style.apply(
              fontSizeFactor: 2.0, color: Color.fromRGBO(1500, 0, 0, 20)),
          //TextStyle(fontWeight: FontWeight.bold),
        ),
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.red),
            backgroundColor: MaterialStateProperty.all(Colors.green)),
        onPressed: selectHandeler,
      ),
    );
  }
}
/**
 * s  style: ButtonStyle(
      backgroundColor: color,
 */