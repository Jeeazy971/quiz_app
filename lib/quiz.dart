import 'package:flutter/material.dart';
import 'package:quizz_app/questions_screen.dart';
import 'package:quizz_app/start_screen.dart';

class Quizz extends StatefulWidget {
  const Quizz({super.key});

  @override
  State<StatefulWidget> createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  // Widget? activeScreen;
  var activeScreen = 'start-screen';

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
      // activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(context) {
    final screenWidget = activeScreen == 'start-screen'
        ? StartScreen(switchScreen)
        : const QuestionScreen();

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 187, 3, 204),
                Color.fromARGB(255, 130, 3, 204),
                Color.fromARGB(255, 90, 3, 204),
                Color.fromARGB(255, 15, 94, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
