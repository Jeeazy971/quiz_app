class QuizzQuestion {
  const QuizzQuestion(this.text, this.answers, this.correctAnswer);

  final String text;
  final List<String> answers;
  final String correctAnswer;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
