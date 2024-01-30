import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
           Image.asset(
              'assets/images/quiz-logo.png',
              width: 350,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
          const SizedBox(height: 20),
          Text(
            'Learn Flutter the fun way!!',
            style: GoogleFonts.lato(
              fontSize: 28,
              color: const Color.fromARGB(255, 200, 200, 200),
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: FilledButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 24),
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start Quiz'))
        ],
      ),
    );
  }
}
