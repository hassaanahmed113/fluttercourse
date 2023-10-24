import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class AudioWid extends StatefulWidget {
  const AudioWid({super.key});

  @override
  State<AudioWid> createState() => _AudioWidState();
}

class _AudioWidState extends State<AudioWid> {
  AudioPlayer audioPlayer = AudioPlayer();
  IconData iconButton = Icons.play_circle_fill_outlined;
  bool isclick = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initPlayerAudio();
  }

  Future<void> initPlayerAudio() async {
    try {
      await audioPlayer.setAsset("assets/audio.mp3");
    } catch (e) {
      print(e);
    }
  }

  Future<void> toggleButton() async {
    try {
      if (isclick) {
        audioPlayer.pause();
        setState(() {
          iconButton = Icons.play_circle_fill_outlined;
          isclick = false;
        });
      } else {
        audioPlayer.play();
        setState(() {
          iconButton = Icons.pause_circle_filled_outlined;
          isclick = true;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
          style: ButtonStyle(
              fixedSize: MaterialStatePropertyAll(Size(200, 200)),
              shape: MaterialStatePropertyAll(CircleBorder())),
          onPressed: toggleButton,
          child: Icon(iconButton)),
    );
  }
}
