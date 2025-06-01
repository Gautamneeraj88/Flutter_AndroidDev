import 'package:flutter/material.dart';

// This is a custom widget that displays styled text

class StyledText extends StatelessWidget {
  //this is the positional constructor
  // to accept the text as a parameter
  // and the key as an optional parameter
  // using the super keyword to pass the key to the parent class
  // and the text to be displayed
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 24,
          color: Color.fromARGB(255, 89, 255, 255),
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(color: Colors.black54, offset: Offset(2, 2), blurRadius: 5),
          ],
        ),
      ),
    );
  }
}
