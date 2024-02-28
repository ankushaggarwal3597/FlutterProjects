import 'package:flutter/material.dart';
import 'package:second_app/quiz.dart';

void main() {
  runApp(const Quiz()
      /*MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 90, 61, 168),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'images/assets/images/quiz-logo.png',
                width: 200,
                color: const Color.fromARGB(130, 255, 255, 255), //method-2
              ),
              /*Opacity(
                opacity: 0.5, //method-1 to add transperancy
                child: Image.asset(
                  'images/assets/images/quiz-logo.png',
                  width: 200,
                ),
              ),*/
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
                  icon: const Icon(
                      Icons.arrow_right_alt), // to add icon on button
                  label: const Text(
                    "start the quiz",
                    //style: TextStyle(fontSize: 15, color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    ),*/
      );
}
