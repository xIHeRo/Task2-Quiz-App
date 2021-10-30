import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText = "you did it";
    if (resultScore == 0)
      resultText = "Ops :( Sorry your Score is : $resultScore";
    else if (resultScore == 1)
      resultText =
          "ooh your Score is : $resultScore, Hope you do well next time";
    else if (resultScore == 2)
      resultText = "You have better than that  :) Your score is : $resultScore";
    else if (resultScore == 3)
      resultText = "Nice :) your Score is : $resultScore ";
    else if (resultScore == 4)
      resultText = "Very Nice :) your Score is : $resultScore";
    else if (resultScore == 5)
      resultText = "Well Done Hero :)         your Score is : $resultScore ";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
              child: Text('Restart Quiz!'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.yellow,
                primary: Colors.deepOrangeAccent,
              ),

              /* ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.redAccent),
              ),*/
              onPressed: resetHandler)
        ],
      ),
    );
  }
}
