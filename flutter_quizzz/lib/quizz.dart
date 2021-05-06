import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quizz extends StatelessWidget {
  @override
  Quizz()
  Widget build(BuildContext context) {
    return Column(
          children: [
            Question(questions[_questionIndex]["questionValue"]),
            ...(questions[_questionIndex]["answersList"] as List<String>).map((e) {
              return Answer(_answerQuestion, e);
            }).toList(),
            Image(
              image: NetworkImage(questions[_questionIndex]["pictureUrl"]),
               
            ),
          ],
        );
  }
}
