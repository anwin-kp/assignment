import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextList extends StatelessWidget {
  final String texts;
  TextList(this.texts);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(" \n " + texts + "\n",
          style: TextStyle(
            fontSize: 20,
            color: Colors.deepPurple,
            
          ),
          
          textAlign: TextAlign.center),
    );
  }
}
