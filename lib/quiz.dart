import 'package:flutter/material.dart';

class Quizz extends StatefulWidget {
  const Quizz({super.key});

  @override
  State<StatefulWidget> createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  _QuizzState();

  @override
  Widget build(context) {
    return const Text(
      'Un autre texte',
      style: TextStyle(
        color: Colors.lightBlueAccent,
      ),
    );
  }
}
