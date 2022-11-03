import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function changeText;

  TextControl(this.changeText);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Color.fromARGB(255, 18, 30, 33),
            backgroundColor: Color.fromARGB(238, 56, 253, 200),
            side: BorderSide(color: Color.fromARGB(255, 255, 0, 0), width: 2),
          ),
          onPressed: changeText,
          child: Text('Press Me')),
    );
  }
}
