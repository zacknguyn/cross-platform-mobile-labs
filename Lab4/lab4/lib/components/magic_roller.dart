import 'package:flutter/material.dart';

import 'dart:math';

class MagicRoller extends StatefulWidget {
  const MagicRoller({super.key});

  @override
  State<MagicRoller> createState() => _MagicRollerState();
}

class _MagicRollerState extends State<MagicRoller> {
  var currentState = 0;

  void rollMagic() {
    setState(() {
      currentState = Random().nextInt(3) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/Magic_$currentState.png',
          width: 300,
        ),
        TextButton(
            onPressed: rollMagic, child: const Text('Roll the Magic 8 Ball!')),
      ],
    );
  }
}
