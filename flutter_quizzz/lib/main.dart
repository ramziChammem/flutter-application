import 'package:flutter/material.dart';
import './question.dart';


void main() => runApp(MyApp());
// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < 1) {
      setState(() {
        _questionIndex++;
      });
      print(_questionIndex);
    } else {
      print("No More Questions");
    }
  }

  void _answerQuestion2() {
    if (_questionIndex > 0) {
      setState(() {
        _questionIndex--;
      });
      print(_questionIndex);
    } else {
      print("an error occured");
    }
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "what's your favourite color?",
      "what's your favourite animal?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Quizz"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(child: Text("Answer 1"), onPressed: _answerQuestion),
            RaisedButton(child: Text("Answer 2"), onPressed: _answerQuestion2),
            RaisedButton(child: Text("Answer 3"), onPressed: _answerQuestion),
          ],
        ),
      ),
    );
  }
}
