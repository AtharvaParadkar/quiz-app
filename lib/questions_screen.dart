import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),
          //? the '...'(spread) operator is used for spreading elements of an iterable ( a list)
          //? or for spreading the key-value pairs of a map.
          //? It's a concise way to include the elements of one collection into another.
          //* Dynamically generated buttons
          ...currentQuestion.answers.map(
            (answer) {
              return AnswerButton(answerText: answer, onTap: () {});
            },
          ),
          //* Hard Coded Buttons
          // AnswerButton(
          //   answerText: currentQuestion.answers[0],
          //   onTap: () {},
          // ),
          // AnswerButton(
          //   answerText: currentQuestion.answers[1],
          //   onTap: () {},
          // ),
          // AnswerButton(
          //   answerText: currentQuestion.answers[2],
          //   onTap: () {},
          // ),
          // AnswerButton(
          //   answerText: currentQuestion.answers[3],
          //   onTap: () {},
          // ),
        ],
      ),
    );
  }
}
