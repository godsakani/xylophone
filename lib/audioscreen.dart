// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioScreen extends StatelessWidget {

   AudioScreen({ Key? key }) : super(key: key);


 void Playsound(int Soundnote) {
    AudioPlayer audioPlayer = AudioPlayer();
    audioPlayer.play('assets/note$Soundnote.wav');
  }
    Expanded buildkey({required Color color, required int Soundnote, }) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          Playsound(Soundnote);
        },
        child: const Text('Play me'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildkey(color: Colors.red, Soundnote: 1),
          buildkey(color: Colors.black, Soundnote: 2),
          buildkey(color: Colors.white, Soundnote: 3),
          buildkey(color: Colors.green, Soundnote: 4),
          buildkey(color: Colors.yellow, Soundnote: 5),
          buildkey(color: Colors.grey, Soundnote: 6),
          buildkey(color: Colors.blue, Soundnote: 7),
          ]
      ),
    );
  }
}
