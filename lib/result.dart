import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback onReset;
  const Result(
    this.resultScore, {
    Key? key,
    required this.onReset,
  }) : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are Awesome and Innocent!";
    } else if (resultScore <= 12) {
      resultText = "Pretty Likeable!";
    } else if (resultScore <= 16) {
      resultText = "You are ... Strange?!";
    } else {
      resultText = "You are so Bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: onReset,
            child: const Text('Restart Quiz!'),
          ),
        ],
      ),
    );
  }
}
