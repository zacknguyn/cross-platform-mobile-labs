import 'package:flutter/material.dart';

class XylophoneModel extends StatelessWidget {
  const XylophoneModel(
      {super.key, required this.color, required this.onPressed});

  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: onPressed,
      child: Container(
        height: 200,
        width: double.infinity,
        color: color,
      ),
    ));
  }
}
