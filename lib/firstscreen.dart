import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            './assets/quiz-logo.png',
            width: 300,
            color: Color.fromARGB(190, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          Container(
            margin:const  EdgeInsets.only(left: 20,right: 20,top: 30),
            child: Text(
              'Learn Flutter the fun way!',
              style: GoogleFonts.montserrat(fontSize: 23, color: Colors.white,fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            onPressed: startQuiz,
            label: const Text(
              "Start Quiz",
              style: TextStyle(fontSize: 20),
            ),
            icon: const Icon(Icons.arrow_right_alt),
          )
        ],
      ),
    );
  }
}
