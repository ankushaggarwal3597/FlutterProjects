import 'package:flutter/material.dart';
import 'package:second_app/answerbutton.dart';
import 'package:second_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion(String selectAnswer) {
    widget.onSelectAnswer(selectAnswer);
    setState(() {
      currentQuestionIndex = currentQuestionIndex + 1;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[
        currentQuestionIndex]; // to access the first value ie firstquestionvalue
    return SizedBox(
      width: double
          .infinity, // this is to take as much width as possible vertically
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment
              .stretch, // to take all available width horizontally
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ), //const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return Answerbutton(answer, () {
                answerQuestion(answer);
              });
            })
            /*Answerbutton(currentQuestion.answers[0], () {}),
            Answerbutton(currentQuestion.answers[1], () {}),
            Answerbutton(currentQuestion.answers[2], () {}),
            Answerbutton(currentQuestion.answers[3], () {})*/
          ],
        ),
      ),
    );
  }
}
