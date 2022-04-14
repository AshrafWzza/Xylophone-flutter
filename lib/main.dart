import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildKey({required Color colorr, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(colorr)),
        onPressed: () {
          final player = AudioCache();
          player.play('note$soundNumber.wav');
        },
        child: Container(),
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
            children: [
              buildKey(colorr: Colors.red, soundNumber: 1),
              buildKey(colorr: Colors.orange, soundNumber: 2),
              buildKey(colorr: Colors.yellow, soundNumber: 3),
              buildKey(colorr: Colors.green, soundNumber: 4),
              buildKey(colorr: Colors.blue, soundNumber: 5),
              buildKey(colorr: Colors.lightBlueAccent, soundNumber: 6),
              buildKey(colorr: Colors.deepPurple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
