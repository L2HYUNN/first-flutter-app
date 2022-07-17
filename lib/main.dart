import './widgets/user_transaction.dart';
import "package:flutter/material.dart";

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // String? titleInput;
  // String? amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                elevation: 5,
                child: Text("CHART!"),
              ),
            ),
            UserTransaction(),
            const Card(
              color: Colors.red,
              child: Text("LIST OF TX"),
            ),
          ],
        ),
      ),
    );
  }
}
