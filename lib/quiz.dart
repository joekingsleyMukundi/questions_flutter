import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List questionsList;
  final Function questionAnswer;
  final int index;
  Quiz(@required this.questionsList, @required this.questionAnswer,
      @required this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(this.questionsList[this.index]['question'] as String),
        // RaisedButton(child: Text('Answer1'), onPressed: answerQuestion),
        // RaisedButton(child: Text('Answer2'), onPressed: () => print("joe")),

        //passing this function  the function is known as a callback function
        ...(this.questionsList[this.index]['answers'] as List<String>).map(
          (answer) {
            return Answer(this.questionAnswer, answer);
          },
        ),
      ],
    );
  }
}
