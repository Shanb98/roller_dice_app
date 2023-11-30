import 'package:flutter/material.dart';
import 'package:roller_dice_app/gradient_container.dart';

class RollerDiceApp extends StatelessWidget {
  const RollerDiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('The Roller Dice 🎲'),
            backgroundColor: Color.fromARGB(255, 0, 143, 245),
          ),
          body: const GradientContainer(
            colors: [
              Color.fromARGB(255, 57, 167, 255),
              Color.fromARGB(255, 175, 227, 255)
            ],
          )),
    );
  }
}