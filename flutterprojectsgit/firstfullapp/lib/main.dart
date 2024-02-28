import 'dart:ffi';
import 'package:flutter/material.dart'; // this line give access to the MATERIAL APP and run app function by flutter
import 'package:firstfullapp/gradient_cointainer.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.amber,
        body: // with help of this we have created a cutom widget
            GradientCointainer(
          colors: [Colors.blue, Colors.white12],
        ), /*Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              // this helps in adding a gradient feature to our app
              colors: [
                Colors.white12,
                Color.fromARGB(255, 1, 131, 236),
              ],
              begin: Alignment.topLeft,
              end: Alignment
                  .bottomRight, // this line changes the direction of the gradient from left to right from top to bottom
            ),
          ),
          child: const Center(
            child: Text(
              'hello world',
              style: TextStyle(
                  // this helps in applying style to the text
                  color: Color.fromARGB(255, 113, 87, 8),
                  fontSize: 25),
            ),
          ),
        ),*/
      ),
    ),
  ); // home is neccesary widget and inside that we create our first text widget (for home page)
}
/*class GradientCointainer extends StatelessWidget {
  const GradientCointainer({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          // this helps in adding a gradient feature to our app
          colors: [
            Colors.white12,
            Color.fromARGB(255, 1, 131, 236),
          ],
          begin: Alignment.topLeft,
          end: Alignment
              .bottomRight, // this line changes the direction of the gradient from left to right from top to bottom
        ),
      ),
      child: const Center(
        child: Text(
          'hello world',
          style: TextStyle(
              // this helps in applying style to the text
              color: Color.fromARGB(255, 113, 87, 8),
              fontSize: 25),
        ),
      ),
    );
  }
}*/