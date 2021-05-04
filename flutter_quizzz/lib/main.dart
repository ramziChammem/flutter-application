import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    if (questionIndex < 1) {
      setState(() {
        questionIndex++;
      });
      print(questionIndex);
    }
  else {
    print("No More Questions");
  }
    
  }

  void answerQuestion2() {
    if (questionIndex > 0) {
      setState(() {
        questionIndex--;
      });
      print(questionIndex);
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
            Text(questions[questionIndex]),
            RaisedButton(child: Text("Answer 1"), onPressed: answerQuestion),
            RaisedButton(child: Text("Answer 2"), onPressed: answerQuestion2),
            RaisedButton(child: Text("Answer 3"), onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
