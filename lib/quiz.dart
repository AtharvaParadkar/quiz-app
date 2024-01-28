import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //Widget? activeScreen;     //* '?' tells dart that variable may contain a widget or null
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    //* Ternary expressions are used to conditionally render a widget👇
    //*final screenWidget = activeScreen == 'start-screen'   //? Condition yields true or false
    //*                  ? StartScreen(switchScreen)         //? Value used, if condition is met
    //*                  : const QuestionsScreen();          //? Value used, if condition is not met

    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              //colors: [Color.fromARGB(255, 116, 67, 249), Color.fromARGB(255, 99, 48, 187)],
              colors: [
                Color.fromARGB(180, 0, 0, 0),
                Color.fromARGB(255, 0, 0, 0)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
