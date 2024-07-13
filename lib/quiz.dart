import 'package:flutter/material.dart';
import 'package:quizapp/questions_screen.dart';
import './firstscreen.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State<QuizApp> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  // Widget? currentScreen;

  // @override
  // void initState() {
  //   currentScreen= FirstScreen(switchScreen);
  //   super.initState();
  // }

  // void switchScreen(){
  //   setState(() {
  //     currentScreen= const QuestionsScreen();
  //   });
  // }

  var currentScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      currentScreen = 'quiz-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget widgetScreen =  FirstScreen(switchScreen);
    if(currentScreen=='quiz-screen'){
      widgetScreen = const QuestionsScreen();
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 98, 1, 115),
                Color.fromARGB(255, 225, 54, 255)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: widgetScreen),
      ),
    );
  }
}
