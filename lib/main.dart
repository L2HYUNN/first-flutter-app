import "package:flutter/material.dart";

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: Column(
          children: const [
            Text("The Question!"),
            RaisedButton(
              onPressed: null,
              child: Text("Answer 1"),
            ),
            RaisedButton(
              onPressed: null,
              child: Text("Answer 2"),
            ),
            RaisedButton(
              onPressed: null,
              child: Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
