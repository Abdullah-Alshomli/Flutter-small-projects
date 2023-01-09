// @dart=2.9
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

//! if you get the error "Cannot run with sound null safety Error" use: { flutter run --no-sound-null-safety } in the terminal
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play("assets_note$noteNumber.wav");
  }

  Expanded buildKey({
    int noteNumber,
    Color color,
  }) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(noteNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(noteNumber: 1, color: Colors.red),
              buildKey(noteNumber: 2, color: Colors.orange),
              buildKey(noteNumber: 3, color: Colors.yellow),
              buildKey(noteNumber: 4, color: Colors.green),
              buildKey(noteNumber: 5, color: Colors.teal),
              buildKey(noteNumber: 6, color: Colors.blue),
              buildKey(noteNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
