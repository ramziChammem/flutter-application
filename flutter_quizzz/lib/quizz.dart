import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quizz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  Quizz({@required this.answerQuestion, @required this.questions, @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]["questionValue"]),
        ...(questions[questionIndex]["answersList"] as List<Map<String, Object>>).map((element) {
          return Answer(() => answerQuestion(element['score']), element["text"]);
        }).toList(),
        Image(
          image: NetworkImage(questions[questionIndex]["pictureUrl"]),
        ),
      ],
    );
  }
}
