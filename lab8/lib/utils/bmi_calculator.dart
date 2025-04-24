import 'dart:math';
import 'package:flutter/material.dart';

class BMICalculator {
  final int height;
  final int weight;

  late double _bmi;

  BMICalculator({
    required this.height,
    required this.weight,
  });

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi < 18.5) {
      return 'UNDERWEIGHT';
    } else if (_bmi >= 18.5 && _bmi < 25) {
      return 'NORMAL';
    } else if (_bmi >= 25 && _bmi < 30) {
      return 'OVERWEIGHT';
    } else {
      return 'OBESE';
    }
  }

  Color getResultColor() {
    if (_bmi < 18.5) {
      return Colors.blue;
    } else if (_bmi >= 18.5 && _bmi < 25) {
      return Colors.green;
    } else if (_bmi >= 25 && _bmi < 30) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }

  String getInterpretation() {
    if (_bmi < 18.5) {
      return 'You have a lower than normal body weight. Try to eat more.';
    } else if (_bmi >= 18.5 && _bmi < 25) {
      return 'You have a normal body weight. Good job!';
    } else if (_bmi >= 25 && _bmi < 30) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else {
      return 'You have a much higher than normal body weight. Try to exercise more and maintain a healthy diet.';
    }
  }
}
