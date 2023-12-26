import 'package:flutter/material.dart';

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
      child: Center(
        // child: Text(
        //   text,
        //   style: const TextStyle(
        //     color: Colors.white,
        //     fontStyle: FontStyle.italic,
        //     fontSize: 30,
        //   ),
        // ),
        child: Image.asset(
          'assets/images/dice-5.png',
          width: 200,
        ),
      ),
    );
  }
}
