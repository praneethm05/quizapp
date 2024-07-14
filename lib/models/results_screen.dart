import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/models/questions.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen({super.key, required this.chooseAnswer});
  final List<String> chooseAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chooseAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'queston': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user-answer': chooseAnswer[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered x out of y question correctly!',
              style: GoogleFonts.robotoCondensed(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'List of Answer and Questions',
              style: GoogleFonts.robotoCondensed(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () => {}, child: const Text('Restart Quiz')),
          ],
        ),
      ),
    );
  }
}
