import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

//* Using _ means that the class is private ie it will only be usable in this file.
//* Even if we import in other file will no be able to use it.
class _QuizState extends State<Quiz> {
  List<String> _selectedAnswers = [];

  //Widget? activeScreen;     //* '?' tells dart that variable may contain a widget or null
  var _activeScreen = 'start-screen';

  void _switchScreen() {
    setState(() {
      _activeScreen = 'questions-screen';
    });
  }

  void _chooseAnswer(String answer) {
    _selectedAnswers.add(answer);
    
    if (_selectedAnswers.length == questions.length) {
      setState(() {
        _activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      _selectedAnswers = [];
      _activeScreen = 'questions-screen';
    });
  }


  @override
  Widget build(context) {
    //* Ternary expressions are used to conditionally render a widget👇
    //final screenWidget = activeScreen == 'start-screen'   // Condition yields true or false
    //\                  ? StartScreen(switchScreen)         // Value used, if condition is met
    //                  : const QuestionsScreen();          // Value used, if condition is not met

    Widget screenWidget = StartScreen(_switchScreen);

    if (_activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: _chooseAnswer);
    }

    if (_activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(chosenAnswers: _selectedAnswers, onRestart: restartQuiz,);
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
