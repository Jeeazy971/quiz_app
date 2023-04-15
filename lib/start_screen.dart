import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Apprendre Flutter c\'est cool !',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              child: const Text(
                'Appuyez-ici',
                style: TextStyle(
                  color: Colors.white,
                ),
              ))
        ],
      ),
    );
  }
}
