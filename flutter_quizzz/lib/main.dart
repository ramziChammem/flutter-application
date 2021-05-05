import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
    if (_questionIndex < 2) {
      setState(() {
        _questionIndex++;
      });
      print(_questionIndex);
    } else {
      print("No More Questions");
    }
  }

  // void _answerQuestion2() {
  //   if (_questionIndex > 0) {
  //     setState(() {
  //       _questionIndex--;
  //     });
  //     print(_questionIndex);
  //   } else {
  //     print("an error occured");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        "questionValue": "What's your favourite color?",
        "answersList": ["Red", "Blue", "Black", "White"],
      },
      {
        "questionValue": "What's your favourite animal?",
        "answersList": ["Dog", "Cat", "Lion", "Snake"],
      },
      {
        "questionValue": "Who's your favourite instructor?",
        "answersList": [
          "Ramzi",
          "Ramzi again",
          "Of corse Ramzi",
          "No one else but Ramzi"
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Quizz"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]["questionValue"]),
            ...(questions[_questionIndex]["answersList"] as List<String>).map((e) {
              return Answer(_answerQuestion, e);
            }).toList()
          ],
        ),
      ),
    );
  }
}
