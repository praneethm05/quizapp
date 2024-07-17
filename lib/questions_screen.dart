import 'package:flutter/material.dart';
import 'package:quizapp/answerbtn.dart';
import './models/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questioncurrent = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              questioncurrent.text,
              style: GoogleFonts.lato(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...questioncurrent.shuffledList().map((answer) {
              return Answerbtn(
                  text: answer,
                  onTap: () {
                    answerQuestion(answer);
                  });
            }),
          ],
        ),
      ),
    );
  }
}
