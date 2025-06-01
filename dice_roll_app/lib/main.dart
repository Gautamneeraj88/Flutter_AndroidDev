import 'package:flutter/material.dart';
import 'package:dice_roll_app/gradient_container.dart';


void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body:  GradientContainer(
          startAlignmet: Alignment.topLeft, 
          endAlignment: Alignment.bottomRight, 
          colors: [Colors.blue, Colors.purpleAccent], 
        ),
      ),
    ),
  );
}
