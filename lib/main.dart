import "package:flutter/material.dart";

import "./question.dart";
import "./answer.dart";

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      "questionText": "What's your favorite color?",
      "answer": ["Black", "Red", "Green", "White"]
    },
    {
      "questionText": "What's your favorite animal?",
      "answer": ["Rabbit", "Snake", "Elephant", "Lion"]
    },
    {
      "questionText": "Who's your favorite instructor?",
      "answer": ["Max", "Mex", "Mix", "Mox"]
    },
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    if (_questionIndex < questions.length) {
      setState(() {
        _questionIndex += 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]["questionText"] as String,
            ),
            ...(questions[_questionIndex]["answer"] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
