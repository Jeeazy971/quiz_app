import 'package:flutter/material.dart';
import 'package:quizz_app/quiz.dart';

class ResultScreen extends StatelessWidget {
  final int score;
  final int totalQuestions;

  const ResultScreen(
      {Key? key, required this.score, required this.totalQuestions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scorePercent = (score / totalQuestions) * 100;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Résultats du Quiz'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Votre Score: $score / $totalQuestions',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              '${scorePercent.toStringAsFixed(1)} %',
              style: const TextStyle(fontSize: 20, color: Colors.green),
            ),
            const SizedBox(height: 20),
            Text(
              scorePercent >= 50 ? 'Bien joué!' : 'Essayez encore!',
              style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Recommencer le quiz en redémarrant l'application
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => const Quizz()),
                  (Route<dynamic> route) => false,
                );
              },
              child: const Text('Recommencer le Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
