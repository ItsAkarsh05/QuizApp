import 'package:flutter/material.dart';
import 'package:quize_app/Questions.dart';
import 'package:quize_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizeState();
  }
}

class _QuizeState extends State<Quiz> {
  var activeScreen = 'start-screen'; //we use start-screen variable to check
  // which screen is active

  // Widget? activeScreen; //the ? means that the variable can be null ,
  // we do so that we can use the variable before it is initialized

  // @override
  // void initState() {
  //   activeScreen = start_screen(switchScreen); // this will be the first
  //screen that will be shown when the app is run
  //   //we use initstate to initialize the state of the widget before it is built
  //   super.initState(); // this will call the initstate of the parent class
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen'; // this is again a string variable
      //which works as an identifier of question screen
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = start_screen(switchScreen);

    if (activeScreen == 'questions-screen') {
      //if the active screen is
      //questions-screen then we will show the question
      screenWidget = const Questions();
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
