import 'package:flutter/material.dart';
import './quizz.dart';
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
  static const questions = [
      {
        "questionValue": "What's your favourite color?",
        "answersList": ["Red", "Blue", "Black", "White"],
        "pictureUrl": "https://content.sintelly.com/articles/7W2bOs3z3YVs2LS7NfFv/content/can-colors-impact-emotions-and-behaviors-0-@sintelly.jpeg"
      },
      {
        "questionValue": "What's your favourite animal?",
        "answersList": ["Dog", "Cat", "Lion", "Snake"],
        "pictureUrl": "https://mediacloud.kiplinger.com/image/private/s--zFDKjwc_--/v1584618177/slideshow/investing/T052-S001-the-9-best-pure-bred-pet-stocks-to-buy/images/intro.jpg"
      },
      {
        "questionValue": "Who's your favourite instructor?",
        "answersList": [
          "Ramzi",
          "Ramzi again",
          "Of corse Ramzi",
          "No one else but Ramzi"
        ],
        "pictureUrl": "https://winsple.com/wp-content/uploads/2020/10/become-a-teacher-hero-image-1.png"
      },
    ];
  void _answerQuestion() {

      setState(() {
        _questionIndex++;
      });
      print(_questionIndex);
    
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
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Quizz"),
        ),
        body: _questionIndex < questions.length ? Quizz() : Center(
          child: Text("You Did It!")
        ),

      ),
    );
  }
}
