import 'package:flutter/material.dart';
import 'package:learning/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.text, this.colors, {super.key});
  final String text;
  final List<Color> colors;

  
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child:const Center(
        // child: Text(
        //   text,
        //   style: const TextStyle(
        //     color: Colors.white,
        //     fontStyle: FontStyle.italic,
        //     fontSize: 30,
        //   ),
        // ),
        child: DiceRoller()
      ),
    );
  }
}
