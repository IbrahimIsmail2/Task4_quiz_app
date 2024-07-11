import 'package:flutter/material.dart';
import 'package:quizz_app1/Result_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ResultScreen(
        result: ' task has been delivered successfully',
      ),
    );
  }
}
