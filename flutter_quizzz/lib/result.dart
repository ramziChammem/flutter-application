import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final resultText;
  Result(this.resultText);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(resultText, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold), textAlign:  TextAlign.center,));
  }
}
