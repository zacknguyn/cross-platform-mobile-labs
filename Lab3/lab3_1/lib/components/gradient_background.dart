import 'package:flutter/material.dart';
import 'package:lab3_1/components/roll_dice.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.purple[200] ?? Colors.purple,
              Colors.purple[700] ?? Colors.purple,
            ]),
      ),
      child: Center(child: RollDice()),
    );
  }
}
