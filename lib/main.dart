import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

 class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(onPressed: () async {
          final player = AudioPlayer();
          await player.play(AssetSource('assets/note1.wav'));
          }, child: Text('Click Me'))),
        ),
      ),
    );
  }


 }