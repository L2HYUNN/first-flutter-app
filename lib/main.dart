import "package:flutter/material.dart";

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
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: Column(
          children: [
            Text(
              questions[_questionIndex],
            ),
            RaisedButton(
              onPressed: _answerQuestion,
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
