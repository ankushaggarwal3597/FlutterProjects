import 'package:firstfullapp/diceroll.dart';
import 'package:flutter/material.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientCointainer extends StatelessWidget {
  GradientCointainer({super.key, required this.colors});
  final List<Color> colors;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // this helps in adding a gradient feature to our app
          colors: colors, //this is giving parameters
          /*colors: const [// this performs the same function as above
            Colors.white12,
            Color.fromARGB(255, 1, 131, 236),
          ],*/
          begin: Alignment.topLeft,
          end:
              endAlignment, //Alignment.bottomRight, // this line changes the direction of the gradient from left to right from top to bottom
        ),
      ),
      child: Center(
        child:
            DiceRoller(), /*Column(
          mainAxisSize: MainAxisSize.min,
          // this reduces the height taken by colun tag to min
          children: [
            Image.asset(
              activeimg,
              width: 200,
            ),
            const SizedBox(
                height: 20), //thid snf thr psffing onr perform same function
            TextButton(
              onPressed: rollDice,
              child: const Text(
                'Roll The Dice',
                style: TextStyle(fontSize: 25),
              ),
              style: TextButton.styleFrom(
                /*padding: const EdgeInsets.only(
                  top: 20,
                ),*/
                foregroundColor: Colors.deepOrange,
              ),
            )
          ],
        ),*/
        /*child: Text(
          'hello world',
          style: TextStyle(
              // this helps in applying style to the text
              color: Color.fromARGB(255, 113, 87, 8),
              fontSize: 25),
        ),*/
      ),
    );
  }
}
