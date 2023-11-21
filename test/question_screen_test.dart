import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quizz_app/answer_button.dart';
import 'package:quizz_app/questions_screen.dart';

void main() {
  testWidgets('Vérifie la présence des questions et des réponses', (WidgetTester tester) async {
    // Lancez l'écran du quiz
    await tester.pumpWidget(const MaterialApp(home: QuestionScreen()));

    // Vérifiez si des éléments de texte (questions/réponses) sont présents
    expect(find.byType(Text), findsWidgets);

    // Vérifiez la présence des boutons de réponse
    expect(find.byType(AnswerButton), findsWidgets);
  });
}
