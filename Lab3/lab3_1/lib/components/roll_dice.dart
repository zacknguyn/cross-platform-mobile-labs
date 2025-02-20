import 'package:flutter/material.dart';

import 'dart:math';

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  var currentDice = 3;

  void rollDice() {
    setState(() {
      currentDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice-$currentDice.png',
          width: 200,
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 28),
            foregroundColor: Colors.white,
          ),
          onPressed: rollDice,
          child: Text('Roll the dice! Dice number: $currentDice'),
        ),
      ],
    );
  }
}
