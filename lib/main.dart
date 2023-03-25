import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioPlayer();

    player.play(AssetSource('note$num.wav'));
  }

  Expanded buildKey({Color color, int soundNUm}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color, // Text Color
        ),
        onPressed: () {
          playSound(soundNUm);
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
              buildKey(color: Colors.orange, soundNUm: 2),
              buildKey(color: Colors.redAccent, soundNUm: 1),
              buildKey(color: Colors.yellow, soundNUm: 3),
              buildKey(color: Colors.lightGreenAccent, soundNUm: 4),
              buildKey(color: Colors.green[800], soundNUm: 5),
              buildKey(color: Colors.blueAccent, soundNUm: 6),
              buildKey(color: Colors.purple, soundNUm: 7),
            ],
          ),
        ),
      ),
    );
  }
}
