import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MusicWidget());
}

class MusicWidget extends StatelessWidget {
  void PlayMusic(int musicNumber) {
    final player = AudioCache();
    player.play('music-$musicNumber.mp3');
  }

  Expanded myButton(
      {int musicNumber = 0,
      Color buttonColor = Colors.red,
      String buttonText = ''}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 3.0),
        child: ElevatedButton(
          onPressed: () {
            PlayMusic(musicNumber);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Icon(Icons.music_note, color: buttonColor),
                SizedBox(width: 20.0),
                Text(
                  buttonText,
                  style: TextStyle(color: buttonColor, fontSize: 20.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('tones app :) '),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton(
                musicNumber: 1,
                buttonColor: Colors.red,
                buttonText: 'Samsung Galaxy'),
            myButton(
                musicNumber: 2,
                buttonColor: Colors.green,
                buttonText: 'Samsung Note'),
            myButton(
                musicNumber: 3, buttonColor: Colors.black, buttonText: 'Nokia'),
            myButton(
                musicNumber: 4,
                buttonColor: Colors.orange,
                buttonText: 'iphon 11'),
            myButton(
                musicNumber: 5,
                buttonColor: Colors.blue,
                buttonText: 'Whatsapp'),
            myButton(
                musicNumber: 6,
                buttonColor: Colors.purple,
                buttonText: 'Samsung S7'),
            myButton(
                musicNumber: 7,
                buttonColor: Colors.black,
                buttonText: 'iphone 6'),
          ],
        ),
      ),
    );
  }
}
