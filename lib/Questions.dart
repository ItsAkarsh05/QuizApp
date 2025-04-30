import 'package:flutter/material.dart';
import 'package:quize_app/AnswerButton.dart';
import 'package:quize_app/DataModels/questionsData.dart';
import 'package:quize_app/DataModels/quiz_questions.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});
  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  var currentQuestionindex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionindex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = QuestionsData[
        currentQuestionindex]; //we use the first question in the list

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              textAlign: TextAlign.center,
              currentQuestion.text,
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  color: Color.fromARGB(194, 255, 255, 255),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            ...currentQuestion.getShuffledAnswers().map(
//we use the spread operator (...) to add the list As children of the column
//we apply map fuction on getshuffledanswers function to get the list of  shuffled answers
//we use the map function to iterate over the list of answers and create a answer button widget for each answer
              (answer) {
                return AnswerButton(answer, answerQuestion);
//we use the map function to iterate over the list of answers and create a answer button widget for each answer
              },
            ),
          ],
        ),
      ),
    );
  }
}
