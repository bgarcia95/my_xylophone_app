import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  void playNote(int soundNumber) {
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color colorPicked, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playNote(soundNumber);
        },
        color: colorPicked,
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
          children: <Widget>[
            buildKey(colorPicked: Colors.red, soundNumber: 1),
            buildKey(colorPicked: Colors.orange, soundNumber: 2),
            buildKey(colorPicked: Colors.yellow, soundNumber: 3),
            buildKey(colorPicked: Colors.green, soundNumber: 4),
            buildKey(colorPicked: Colors.teal, soundNumber: 5),
            buildKey(colorPicked: Colors.blue, soundNumber: 6),
            buildKey(colorPicked: Colors.purple, soundNumber: 7),
          ],
        )),
      ),
    );
  }
}
