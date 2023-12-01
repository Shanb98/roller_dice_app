import 'package:flutter/material.dart';
import 'package:roller_dice_app/roller_dice.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  bool isStarted = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: isStarted 
        ? Column(
            children: [
              const RollerDice(),
              const SizedBox(
                height: 50,
              ),
              InkWell(
                child: const Text(
                  '< Back to Home',
                  style: TextStyle(color: Color.fromARGB(255, 22, 0, 109), fontSize: 20),
                ),
                onTap: () {
                  setState(() {
                  isStarted = false;
                  });
                },
              )
            ],
        )
        : Column (
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Image.asset(
                      'assets/images/StartIcon.png', 
                      height: 200, 
                    ),
                  ),
                Container(
                  margin: const EdgeInsets.only(bottom: 100),
                  child: const Text(
                    'Welcome to Roller Dice Game!',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), 
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      ),
                    textAlign: TextAlign.center,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      isStarted = true;
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(22, 64, 214, 1.0),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 28),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(38.0),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text('Let\'s Start ! 🎲'),
                  ),
                )

              ]));
  }
}