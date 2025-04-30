import 'package:quize_app/DataModels/quiz_questions.dart';

const QuestionsData = [
  QuizQuestions(
    'what are the main building block of flutter ',
    [
      'widgets',
      'components',
      'elements',
      'Blocks ',
    ],
  ),
  QuizQuestions(
    'how art Flutter UIs built ',
    [
      'by combining widgets',
      'by combining components',
      'by defining widgets in configuration files',
      'by using Xcode and Android Studio',
    ],
  ),
  QuizQuestions(
    'what is the purpose of Stateful Widgets ',
    [
      'to update UI as data changes',
      'to create a widget that can change its appearance',
      'to Ignore data changes',
      'to create a widget that can change its color',
    ],
  ),
  QuizQuestions(
    'which Widget should you try to use more often: StatelessWidget or StatefulWidget',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both',
      'None',
    ],
  ),
  QuizQuestions(
    'what happens when you change data in StatelessWidget',
    [
      'The UI is not updated',
      'The UI is updated',
      'the widget is rebuilt',
      'the widget is destroyed',
    ],
  ),
  QuizQuestions(
    'how should you update data inside of StatefulWidgets',
    [
      'by using setState()',
      'by using build()',
      'by using initState()',
      'by using dispose()',
    ],
  ),
];
