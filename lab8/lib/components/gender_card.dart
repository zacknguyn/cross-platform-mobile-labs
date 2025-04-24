import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final GestureTapCallback? onTap;

  GenderCard({
    required this.color,
    required this.cardChild,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(0, 2),
                blurRadius: 6,
              ),
            ],
          ),
          child: cardChild),
    );
  }
}
