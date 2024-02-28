import 'package:flutter/material.dart';
import 'package:second_app/data/questions.dart';
import 'package:second_app/models/result_screen.dart';
import 'package:second_app/questionscreen.dart';
import 'package:second_app/startscreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = []; // this is to store the selected answers
  var activeScreen = 'start-screen'; //method 2

  //Widget? activeScreen; method 1 to connect screen
  /*@override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }*/
  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
      //activeScreen = const QuestionScreen();
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers
        .add(answer); // this functions helps in storing the selected answers
    if (selectedAnswers.length == questions.length) {
      setState(() {
        //selectedAnswers =[]; // this is done taki jitni bar bhi hum question khatam krae utni baar start screen par restart ho jae
        // yae na lagane par ek bar restart hokae dusri baar mae error throw krta ha
        activeScreen = 'result-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = "question-screen";
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      );
    }
    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        choosenanswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 90, 61, 168),
        body: Center(
          child: screenWidget,
          /*child: activeScreen == 'start-screen'
              ? StartScreen(switchScreen)
              : QuestionScreen(
                  onSelectAnswer: chooseAnswer,
                ),*/
          /*activeScreen*,*/ /*Column(
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
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  icon: const Icon(Icons.arrow_right_alt),
                  label: const Text(
                    "start the quiz",
                  )),
            ],
          ),*/
        ),
      ),
    );
  }
}
