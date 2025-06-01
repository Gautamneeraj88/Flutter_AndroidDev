import "package:flutter/material.dart";
import 'package:dice_roll_app/styled_text.dart';
import 'dart:math';

final _random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;


  void rollDice() {
    // var random = Random().nextInt(6) + 1; 
    setState(() {
      // currentDiceRoll = Random().nextInt(6) + 1;
      currentDiceRoll = _random.nextInt(6) + 1;
      // activeDiceImage = 'assets/images/dice-$currentDiceRoll.png';
    });
    // setState(() {
    //   activeDiceImage = 'assets/images/dice-${(1 + (6 * (DateTime.now().millisecondsSinceEpoch % 1000) / 1000)).floor()}.png';
    // });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset( 'assets/images/dice-$currentDiceRoll.png', width: 200, height: 200),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 24),
          ),
          child: StyledText("Roll Dice"),
        ),
      ],
    );
  }
}
