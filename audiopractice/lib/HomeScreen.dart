import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AudioPlayer audioPlayer = AudioPlayer();
  IconData playpauseButton = Icons.play_circle_fill_rounded;
  bool isplaying = false;

  Future<void> toggleButton() async {
    try {
      await audioPlayer.setAsset("assets/song.mp3");

      if (isplaying) {
        audioPlayer.play();
        setState(() {
          playpauseButton = Icons.pause_circle_filled_rounded;
          isplaying = false;
        });
      } else {
        audioPlayer.pause();
        setState(() {
          playpauseButton = Icons.play_circle_fill_rounded;
          isplaying = true;
        });
      }
    } catch (e) {
      print("error $e");
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    audioPlayer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: InkWell(
        onTap: toggleButton,
        child: Container(
          child: Icon(
            playpauseButton,
            size: 100,
            color: Colors.black,
          ),
        ),
      )),
    );
  }
}
