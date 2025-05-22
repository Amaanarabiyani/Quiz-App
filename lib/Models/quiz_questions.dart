class QuizQuestions {
  final String text;
  final List<String> answers;

  const QuizQuestions(this.text, this.answers);

  List<String> shuffeledAnser() {
    final shuffeledList = List.of(answers);
    shuffeledList.shuffle();
    return shuffeledList;
  }
}
