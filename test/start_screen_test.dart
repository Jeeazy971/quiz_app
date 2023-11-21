import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quizz_app/start_screen.dart';

void main() {
  testWidgets('Vérifie la présence du bouton pour commencer le quiz', (WidgetTester tester) async {
    // Créez une fonction factice pour simuler le démarrage du quiz
    void startQuizMock() {}

    // Lancez l'écran de démarrage
    await tester.pumpWidget(MaterialApp(home: StartScreen(startQuizMock)));

    // Vérifiez si le bouton pour commencer le quiz est présent
    expect(find.text('Commencer le quizz'), findsOneWidget);
  });
}
