import 'package:flutter/material.dart';
import 'package:lab3_1/components/gradient_background.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const Center(
          child: GradientBackground(),
        ),
      ),
    );
  }
}
