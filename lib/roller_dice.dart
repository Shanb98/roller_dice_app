import 'dart:math';
import 'package:flutter/material.dart';

class RollerDice extends StatefulWidget {
  const RollerDice({super.key});

  @override
  State<RollerDice> createState() => _RollerDiceState();
}

class _RollerDiceState extends State<RollerDice> {
  int diceNumber = 1;
  int round = 0;
  int playerOneWins = 0;
  int playerTwoWins = 0;
  int playerOneRoud = 1;
  int playerTwoRoud = 1;
 
  playerOneAction() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  playerTwoAction() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }
  
  bool isPlayerOneButtonDisable() {
  if (playerOneRoud > playerTwoRoud) {
    return true;
  }
  return false;
  }

  bool isPlayerTwoButtonDisable() {
    if (playerOneRoud == playerTwoRoud) {
      return true;
    }
    return false;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      
                children: [
                  Text(
                    'Round ${(round + 1)}',
                    style: const TextStyle(color: Colors.white, fontSize: 28),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'assets/images/dice-$diceNumber.png',
                    width: 200,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: playerOneAction,
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.pink,
                              foregroundColor: Colors.white,
                              textStyle: const TextStyle(fontSize: 18)),
                          child: const Text('Roll - Player 1')),
                      const SizedBox(
                        width: 20,
                      ),
                      TextButton(
                          onPressed: playerTwoAction(),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.pink,
                              foregroundColor: Colors.white,
                              textStyle: const TextStyle(fontSize: 18)),
                          child: const Text('Roll - Player 2')),
                    ],
                  ),
                ],
              );
  }
}