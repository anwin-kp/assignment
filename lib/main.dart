import 'package:assignment/textcontrol.dart';
import 'package:flutter/material.dart';

import './texts.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _textIndex = 0;
  var rTextes = ['Hi', 'Hello', 'Welcome', 'Greetings'];

  void _reset() {
    setState(() {
      _textIndex = 0;
    });
  }

  void _textChange() {
    setState(() {
      _textIndex = _textIndex + 1;
    });
    print('Text changed');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment'),
        ),
        body: Center(
          child: _textIndex < rTextes.length
              ? Column(
                  children: [
                    TextList(rTextes[_textIndex]),
                    TextControl(_textChange),
                  ],
                )
              : Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Color.fromARGB(255, 18, 30, 33),
                        backgroundColor: Color.fromARGB(238, 56, 253, 200),
                        side: BorderSide(
                            color: Color.fromARGB(255, 255, 0, 0), width: 2),
                      ),
                      onPressed: _reset,
                      child: Text('Restart')),
                ),
        ),
      ),
    );
  }
}
