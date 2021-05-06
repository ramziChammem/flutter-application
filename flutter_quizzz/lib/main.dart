import 'package:flutter/material.dart';
import './quizz.dart';
import './result.dart';

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
  var _totalScore = 0;
  String _checkResult() {
    if (_totalScore < 5) {
      return "You are soo bad bro!";
    } else if (_totalScore > 5 && _totalScore < 9) {
      return "You are not bad but you need to be better!";
    } else if (_totalScore > 9) {
      return "Wohoo You Are Great";
    }
  }

  static const _questions = [
    {
      "questionValue": "What's your favourite color?",
      "answersList": [
        {"text": "Red", "score": 1},
        {"text": "Blue", "score": 3},
        {"text": "Black", "score": 4},
        {"text": "White", "score": 6}
      ],
      "pictureUrl":
          "https://content.sintelly.com/articles/7W2bOs3z3YVs2LS7NfFv/content/can-colors-impact-emotions-and-behaviors-0-@sintelly.jpeg"
    },
    {
      "questionValue": "What's your favourite animal?",
      "answersList": [
        {"text": "dog", "score": 4},
        {"text": "Cat", "score": 3},
        {"text": "Lion", "score": 2},
        {"text": "Sname", "score": 0}
      ],
      "pictureUrl":
          "https://mediacloud.kiplinger.com/image/private/s--zFDKjwc_--/v1584618177/slideshow/investing/T052-S001-the-9-best-pure-bred-pet-stocks-to-buy/images/intro.jpg"
    },
    {
      "questionValue": "Who's your favourite text?",
      "answersList": [
        {"text": "Ramzi", "score": 3},
        {"text": "Ramzi again", "score": 3},
        {"text": "Of course Ramzi", "score": 3},
        {"text": "No one else but Ramzi", "score": 3}
      ],
      "pictureUrl":
          "https://winsple.com/wp-content/uploads/2020/10/become-a-teacher-hero-image-1.png"
    },
  ];
  void _answerQuestion(int score) {
    _totalScore += score;
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
        body: _questionIndex < _questions.length
            ? Quizz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_checkResult()),
      ),
    );
  }
}
