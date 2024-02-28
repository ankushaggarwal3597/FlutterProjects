import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'images/assets/images/quiz-logo.png',
          width: 200,
          color: const Color.fromARGB(130, 255, 255, 255),
        ),
        const Padding(padding: EdgeInsets.all(20)),
        const Text(
          'learn flutter the fun way',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        const Padding(padding: EdgeInsets.all(10)),
        OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              "start the quiz",
            )),
      ],
    );
  }
}
