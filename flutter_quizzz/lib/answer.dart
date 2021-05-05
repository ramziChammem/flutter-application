import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerFunction;
  final String answerText;
  Answer(this.answerFunction, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.cyan,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: answerFunction,
      ),
    );
  }
}
