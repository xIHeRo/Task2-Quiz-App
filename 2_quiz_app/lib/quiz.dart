import 'package:flutter/material.dart';
import './question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> questions;
  final int questionIndex;
  final Function answerQuestion;
/**
 * THe @required  is converted to requrired here is used to make all the inputs are required for
 * Not possible to wirk without them
 */
  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return /**The Beginnig of Column that holds questions and answers */
        Column(
      children: [
        /**
                     * *********** Question *********
                     * It is a widget that in form of class
                     * whose constructor expects to get a value for string question text
                     */
        Question(
          /**
                       * Sending the map to the constructor of Question
                       * First Argument : Number of which index is the question
                       * Second Argument : The String of the question itself
                       */
          questions[questionIndex]['questionText'],
        ),
        /**
                     * Here we make the answers dynamically
                     * show with respect to the question that
                     *  appears to the user
                     */
        ...(questions[questionIndex]['answers'] as List<Map<String, dynamic>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
