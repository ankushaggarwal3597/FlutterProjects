import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second_app/data/questions.dart';
import 'package:second_app/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.choosenanswers, required this.onRestart});
  final void Function() onRestart;
  final List<String> choosenanswers;
  List<Map<String, Object>> getsummarydata() {
    final List<Map<String, Object>> summary =
        []; // this is store the record of attempted answers by user
    for (var i = 0; i < choosenanswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_Answer': questions[i].answers[
              0], // this is 0 because we kept a format that the first answer is correct
          'user_Answer': choosenanswers[i]
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getsummarydata();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_Answer'] == data['correct_Answer'];
    }).length;
    return SizedBox(
        width: double
            .infinity, // this is to take as much width as possible vertically
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'you answered $numCorrectQuestions out of $numTotalQuestions questions respectively',
                style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 230, 200, 253),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              QuestionsSummary(summaryData),
              const SizedBox(
                height: 30,
              ),
              /*const SizedBox(
                height: 30,
              ),*/
              TextButton.icon(
                  onPressed: onRestart,
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  icon: const Icon(Icons.refresh),
                  label: const Text('restart quiz'))
            ],
          ),
        ));
  }
}
