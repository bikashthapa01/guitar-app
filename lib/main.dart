import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  void playString(String name) {
    final player = AudioCache();
    player.play(name);
  }

  Expanded addString(
      {required String name,
      required Color color,
      required String stringName}) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          playString(name);
        },
        child: Text(stringName),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              addString(
                  name: "eh.mp3", color: Colors.red, stringName: "EH String"),
              addString(
                  name: 'b.mp3', color: Colors.purple, stringName: "B String"),
              addString(
                  name: 'g.mp3', color: Colors.amber, stringName: "G String"),
              addString(
                  name: 'd.mp3', color: Colors.black, stringName: "D String"),
              addString(
                  name: 'a.mp3', color: Colors.blue, stringName: "A String"),
              addString(
                  name: 'e.mp3', color: Colors.teal, stringName: "E String"),
            ],
          ),
        ),
      ),
    );
  }
}
