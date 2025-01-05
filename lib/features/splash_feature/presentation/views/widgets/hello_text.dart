import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HelloText extends StatefulWidget {
  const HelloText({
    super.key,
  });

  @override
  State<HelloText> createState() => _HelloTextState();
}

class _HelloTextState extends State<HelloText> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(
        Duration(seconds: 2),
        () {
          return true;
        },
      ),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          AudioPlayer player = AudioPlayer();
          player.play(AssetSource('sounds/note7.wav'));

          return Container(
            alignment: Alignment.center,
            child: const Text(
              'HELLO...!',
              style: TextStyle(
                fontSize: 48,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          );
        } else {
          return SizedBox();
        }
      },
    );
  }
}
