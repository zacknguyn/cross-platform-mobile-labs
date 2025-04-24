import 'package:flutter/material.dart';
import 'package:lab8/constants.dart';
import 'package:lab8/screens/bmi_calculator_screen.dart';

void main() {
  runApp(BMICalculatorApp());
}

class BMICalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kPrimaryColor,
        colorScheme: ColorScheme.dark().copyWith(
          primary: kPrimaryColor,
          secondary: kAccentColor,
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      home: BMICalculatorScreen(),
    );
  }
}
