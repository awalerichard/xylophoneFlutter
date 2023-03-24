import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioPlayer();

    player.play(AssetSource('note$num.wav'));
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
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.redAccent, // Text Color
                  ),
                  onPressed: () {
                    playSound(1);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orangeAccent, // Text Color
                  ),
                  onPressed: () {
                    playSound(2);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow, // Text Color
                  ),
                  onPressed: () {
                    playSound(3);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.lightGreenAccent, // Text Color
                  ),
                  onPressed: () {
                    playSound(4);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green[700], // Text Color
                  ),
                  onPressed: () {
                    playSound(5);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blueAccent, // Text Color
                  ),
                  onPressed: () {
                    playSound(6);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.purple, // Text Color
                  ),
                  onPressed: () {
                    playSound(7);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
