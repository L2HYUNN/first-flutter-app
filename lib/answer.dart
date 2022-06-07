import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;

  const Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        onPressed: selectHandler,
        child: const Text("Answer 1"),
      ),
    );
  }
}
