import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeImage = 'assets/images/dice-1.png';
  void rollDice() {
    var diceroll = Random().nextInt(6) + 1;
    setState(() {
      activeImage = 'assets/images/dice-$diceroll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          activeImage,
          width: 200,
        ),
        const SizedBox(height: 20),
        OutlinedButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            textStyle: const TextStyle(fontSize: 20),
          ),
          child: const Text("Roll Dice"),
        )
      ],
    );
  }
}
