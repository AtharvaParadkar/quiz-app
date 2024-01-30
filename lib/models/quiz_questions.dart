class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    //? Chaining👇 - calling a method (shuffle()) on the result of calling another functional method (of(answers)).
    //* List.of(answers).shuffle(); 

    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;  
  }
}