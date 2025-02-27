import 'package:flutter/material.dart';

class ButtonModel {
  final Color color;
  final String audioName;

  const ButtonModel({required this.color, required this.audioName});
}

const allButtons = [
  ButtonModel(color: Colors.red, audioName: 'note1.wav'),
  ButtonModel(color: Colors.orange, audioName: 'note2.wav'),
  ButtonModel(color: Colors.yellow, audioName: 'note3.wav'),
  ButtonModel(color: Colors.green, audioName: 'note4.wav'),
  ButtonModel(color: Colors.teal, audioName: 'note5.wav'),
  ButtonModel(color: Colors.blue, audioName: 'note6.wav'),
  ButtonModel(color: Colors.purple, audioName: 'note7.wav'),
];
