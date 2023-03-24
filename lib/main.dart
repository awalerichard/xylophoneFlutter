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
        body: SafeArea(
          child: Column(
            children: [
              Container(
                color: Colors.redAccent,
                width: 180,
                height: 60,
                margin: EdgeInsets.symmetric(vertical: 15.0),
                child: TextButton(
                  onPressed: () {
                    playSound(1);
                  },
                ),
              ),
              Container(
                color: Colors.orange,
                width: 180,
                height: 60,
                margin: EdgeInsets.symmetric(vertical: 15.0),
                child: TextButton(
                  onPressed: () {
                    playSound(2);
                  },
                ),
              ),
              Container(
                color: Colors.yellow,
                width: 180,
                height: 60,
                margin: EdgeInsets.symmetric(vertical: 15.0),
                child: TextButton(
                  onPressed: () {
                    playSound(3);
                  },
                ),
              ),
              Container(
                color: Colors.lightGreenAccent,
                width: 180,
                height: 60,
                margin: EdgeInsets.symmetric(vertical: 15.0),
                child: TextButton(
                  onPressed: () {
                    playSound(4);
                  },
                ),
              ),
              Container(
                color: Colors.green[800],
                width: 180,
                height: 60,
                margin: EdgeInsets.symmetric(vertical: 15.0),
                child: TextButton(
                  onPressed: () {
                    playSound(5);
                  },
                ),
              ),
              Container(
                color: Colors.blueAccent,
                width: 180,
                height: 60,
                margin: EdgeInsets.symmetric(vertical: 15.0),
                child: TextButton(
                  onPressed: () {
                    playSound(6);
                  },
                ),
              ),
              TextButton(
                child: Container(
                  color: Colors.purple,
                  width: 180,
                  height: 60,
                  //padding: const EdgeInsets.all(10.0),
                  margin: EdgeInsets.symmetric(vertical: 15.0),
                  child: TextButton(
                    onPressed: () {
                      playSound(7);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
