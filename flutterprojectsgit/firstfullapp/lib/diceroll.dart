import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentdiceroll = 1;
  final randomizer = Random();
  //var activeimg = 'images/dice-images/dice-1.png';
  void rollDice() {
    //var diceroll=Random().nextInt(6)+1;// this rondom function is imported from math and it generates number from 0 to 5 not 6 and then 1 is added to it so it now generates form 1 to 6
    setState(() {
      //currentdiceroll=Random().nextInt(6)+1;
      currentdiceroll = randomizer.nextInt(6) + 1; // method 2
      //currentdiceroll = Random().nextInt(6) + 1;// method 1
      //activeimg = 'images/dice-images/dice-$diceroll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      // this reduces the height taken by colun tag to min
      children: [
        Image.asset(
          'images/dice-images/dice-$currentdiceroll.png',
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
    );
  }
}
