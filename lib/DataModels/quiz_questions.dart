class QuizQuestions {
  const QuizQuestions(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final ShuffledAnswers = List.of(answers);
    ShuffledAnswers.shuffle();
    return ShuffledAnswers;
  }
}
