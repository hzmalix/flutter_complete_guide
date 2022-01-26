import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectionHandler;
  final String answerText;

  const Answer(
    this.selectionHandler,
    this.answerText, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: selectionHandler,
      ),
    );
  }
}
