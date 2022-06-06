import "package:flutter/material.dart";

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Answer Question!");
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
            const Text("The Question!"),
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
