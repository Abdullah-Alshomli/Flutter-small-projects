// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
        debugShowCheckedModeBanner: false,
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballImageNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade500,
      child: Center(
        child: FlatButton(
          onPressed: () {
            setState(() {
              ballImageNumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset("images/ball$ballImageNumber.png"),
        ),
      ),
    );
  }
}
