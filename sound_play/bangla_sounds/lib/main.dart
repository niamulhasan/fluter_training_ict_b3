import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: ElevatedButton(
              onPressed: () {
                print("object");
                AudioCache player = new AudioCache();
                const alarmAudioPath = "assets/sounds/kutta.wav";
                player.play(alarmAudioPath);
              },
              child: Text("Bark"),
            ),
          ),
        ),
      ),
    );
  }
}
