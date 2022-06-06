import "package:flutter/material.dart";

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  var questions = [
    "What's your favorite color?",
    "What's your favorite animal?",
  ];
  void answerQuestion() {
    questionIndex += 1;
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
            Text(
              questions[questionIndex],
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: const Text("Answer 1"),
            ),
            RaisedButton(
              onPressed: () => print("Answer Two"),
              child: const Text("Answer 2"),
            ),
            RaisedButton(
              onPressed: () {
                print("Answer Three");
                print("Answer More");
              },
              child: const Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
