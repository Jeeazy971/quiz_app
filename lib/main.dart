import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                width: 200,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Apprendre Flutter c\'est cool ! ',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text(
                  'Appuyez-ici',
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
