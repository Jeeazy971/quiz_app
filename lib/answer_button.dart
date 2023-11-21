import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answerText;
  final Function(String) onTap;

  const AnswerButton({
    Key? key,
    required this.answerText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onTap(answerText),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        backgroundColor: const Color.fromARGB(255, 121, 2, 142),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontSize: 16), // Ajoutez ici le style de votre texte si nécessaire
      ),
    );
  }
}
