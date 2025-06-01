import 'package:flutter/material.dart';
import 'package:dice_roll_app/dice_roller.dart';


class GradientContainer extends StatelessWidget {
  //this is the named constructor
  //to accept the named parameters using the curly braces

  GradientContainer(
  // this.startAlignmet,
  // this.endAlignment,
  // this.colors,
  {
    super.key,
    required this.startAlignmet, //this is the start alignment
    required this.endAlignment, //this is the end alignment
    required this.colors, //this is the list of colors
  }); //this is the constructor
  //this is the constructor for the GradientContainer widget
  //to accpet the named parameters using the curly braces

  /* 
 also can be written as:
  GradientContainer({Key? key}) : super(key: key);
  //this is the constructor for the GradientContainer widget
  //to accept the named parameters using the curly braces
 */
  final Alignment startAlignmet; 
  final Alignment endAlignment; 
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignmet,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(), 
      ),
    );
  }
}
