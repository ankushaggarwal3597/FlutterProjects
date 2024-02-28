class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text; // this is for displaying question text on screen
  final List<String> answers; // this is for displaying mcq options on screen
  List<String> getShuffledAnswers() {
    final shuffledlist = List.of(
        answers); // to create a copy of original list answers as after shuffling theyre positions might get changed
    shuffledlist.shuffle(); // to shuffle the list
    return shuffledlist;
  }
}
