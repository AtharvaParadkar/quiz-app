import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsAnswers extends StatelessWidget {
  const QuestionsAnswers(
    {
    super.key,
    required this.isCorrectAnswer,
  });

  final bool isCorrectAnswer;
  

  @override
  Widget build(BuildContext context) {

    return Text(
      '',
      style: GoogleFonts.lato(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 25, 199, 115)
            : const Color.fromARGB(255, 223, 22, 62),
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
