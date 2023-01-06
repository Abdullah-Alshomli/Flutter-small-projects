// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        title: Center(child: Text("Best Game Ever")),
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Center(
        child: Image(
          image: NetworkImage(
              "https://image.api.playstation.com/vulcan/img/rnd/202010/2614/NVmnBXze9ElHzU6SmykrJLIV.png"),
        ),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}
