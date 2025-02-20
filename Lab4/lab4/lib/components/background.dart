import 'package:flutter/material.dart';
import 'package:lab4/components/magic_roller.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.topCenter,
            colors: [
              Colors.blue[300] ?? Colors.blue,
              Colors.indigo[500] ?? Colors.indigo,
            ]),
      ),
      child: Center(child: MagicRoller()),
    );
  }
}
