import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 400,),    
          const SizedBox(height: 20),
          const Text('Learn Flutter the fun way!!',
              style: TextStyle(
                fontSize: 28,
                color: Color.fromARGB(255, 200, 200, 200),
              ),),
          const SizedBox(height: 20),
          OutlinedButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 24),
              ),
              child: const Text('Start Quiz'))
        ],
      ),
    );
  }
}
