import 'package:quiz_app/models/quiz_questions.dart';

const questions = [
  QuizQuestion(
    'What are the main building blocks of flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion(
    'How are flutter UIs built?',
    [
      'By combining widgets in code',
      'By combining widgets in visual editor',
      'By defining widgets in config files',
      'By using Android Studio for Android & XCode for IOS',
    ],
  ),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as Data changes',
      'Update Date as UI changes',
      'Ignore date changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What happens if you change date in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest statefulWidget is updated',
      'Any nested statefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    'How should you update date inside of StatefulWidgets',
    [
      'By calling setState()',
      'By calling updateDate()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
];
