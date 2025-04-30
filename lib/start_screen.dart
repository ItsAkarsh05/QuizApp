import 'package:flutter/material.dart';

class start_screen extends StatelessWidget {
  const start_screen(this.startQuiz,
      {super.key}); // constructor to pass the function
  // this function will be called when the button is pressed
  //this.startQuiz is a function that will be passed from the quiz.dart file which will be called when the button is pressed and
// it will change the screen to the question screen

  final void Function()
      startQuiz; // in the varriable we are passing the function to the start screen
  // this function will be called when the button is pressed

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(164, 255, 255, 255),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Flutter Quiz',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed:
                startQuiz, //startQuiz is a pointer to a functionthat will be called when the button is pressed :)
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_rounded),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
