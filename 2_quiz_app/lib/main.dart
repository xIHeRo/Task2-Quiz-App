// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
//import 'package:flutter_application_1/result.dart';
import './result.dart';
import './quiz.dart';

/** Start The Application */
void main() => runApp(MyApp());

/** Generating a Stateful Widget depends on State */
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  /**Intializing the Score and Question index by zero */
  var _questionIndex = 0;
  var _totalscore = 0;

  /* This Function Resets the inedx and score 
  to zero so that when Set is activated
  so the whole app renders again and reset
  */
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

/*This is the list of questions which will be navigated by widget Qiestion */
  final List<Map<String, dynamic>> _questions = const [
    {
      'questionText': 'What number comes next in this sequence? '
          ' 25, 32, 27, 36 ',
      'answers': [
        {'text': '27', 'score': 1},
        {'text': '39', 'score': 0},
        {'text': '23', 'score': 0},
        {'text': '35', 'score': 0},
        {'text': '55', 'score': 0}
        /**27; add, then deduct,
       *  the sum of the digits of the previous number alternately each time,
       *  ie 36 – 3 – 6 = 27 */
      ],
    },
    {
      'questionText':
          'Can you Calculate the value of x?                         7 × 9 – 3 × 4 + 10 = x',
      'answers': [
        {'text': '15', 'score': 0},
        {'text': '38', 'score': 0},
        {'text': '61', 'score': 1},
        {'text': '88', 'score': 0},
        {'text': '90', 'score': 0}
        /**37 ( 7 × 9) – (3 × 4) + 10 = 61
      * The rule is x, /, +, - taken in that order. */
      ],
    },
    {
      'questionText':
          'I am an odd number. Take away one letter and I become even. What number am I?',
      'answers': [
        {'text': '39', 'score': 0},
        {'text': '11', 'score': 0},
        {'text': '1', 'score': 0},
        {'text': '7', 'score': 1},
        {'text': '9', 'score': 0}
        /*Seven (take away the ‘s’ and it becomes ‘even’). */
      ],
    },
    {
      'questionText':
          'Sally is 54 years old and her mother is 80, how many years ago was Sally’s mother times her age?',
      'answers': [
        {'text': '35', 'score': 0},
        {'text': '88', 'score': 0},
        {'text': '79', 'score': 1},
        {'text': '23', 'score': 0},
        {'text': '41', 'score': 0}
        /*41 years ago, when Sally was 13 and her mother was 39. */
      ],
    },
    {
      'questionText':
          'If 10 people can do a piece of work in 5 days, working 2 hours a day, how long will 2 people take to do the same work, working 5 hours a day?',
      'answers': [
        {'text': '8', 'score': 0},
        {'text': '10', 'score': 1},
        {'text': '12', 'score': 0},
        {'text': '16', 'score': 0}
        /*Explanation: People 1 / ( no. of days x time in hours) */
      ],
    },
  ];
/* This function is used to:
 1.Increment the score beside each answer 
 2.increment the quesiton index */
  void _answerQuestion(int score) {
    _totalscore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

/* Our Application main function */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(child: Text('Lets See Your IQ Level !')),
          backgroundColor: Colors.teal,
        ),
        /** we Will make an if condition to check wehther
           *  the Number of questions reached the maximum 
           * or not if yes leave the column and print the final message  */
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            /*
                This is the else of the if condition above
                that states that when the number of questions reach maximum ,
                Appear a certain message to the user 
                Using a Widget I made called Result
                */
            : Result(_totalscore, _resetQuiz),
      ),
    );
  }
}
