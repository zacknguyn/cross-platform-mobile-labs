import 'package:flutter/material.dart';
import 'package:lab8/constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;

  IconContent({
    required this.icon,
    required this.label,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: kIconSize,
          color: isSelected ? kAccentColor : Colors.white,
        ),
        SizedBox(height: kSizedBoxHeight),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
