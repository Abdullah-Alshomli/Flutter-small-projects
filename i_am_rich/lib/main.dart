// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(
    // MaterialApp is the start for almost all flutter applications
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
            centerTitle: true,
            title: const Text("I Am Rich"),
            backgroundColor: Colors.blueGrey[900]),
        body: Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
          ),
        ),
      ),
      // to remove the debug banner
      debugShowCheckedModeBanner: false,
    ),
  );
}
