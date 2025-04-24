import 'package:flutter/material.dart';
import 'package:lab8/constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  RoundIconButton({
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: kButtonColor,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      elevation: 6,
      child: Icon(icon),
    );
  }
}
