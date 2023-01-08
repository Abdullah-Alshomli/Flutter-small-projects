// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Expanded used when our item is larger than the screen
        Expanded(
          flex: 5,
          child: Image(
            image: AssetImage('images/dice1.png'),
          ),
        ),
        Expanded(
          child: Image(
            image: AssetImage('images/dice1.png'),
          ),
        ),
      ],
    );
  }
}
