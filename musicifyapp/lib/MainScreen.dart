import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';

class MainScreen extends StatefulWidget {
  var image, title, subtitle, song;
  MainScreen(this.image, this.title, this.subtitle, this.song, {super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  AudioPlayer audioPlayer = AudioPlayer();
  Image playpauseButton = Image.asset("assets/play.png");
  bool isplaying = false;

  Future<void> toggleButton() async {
    try {
      await audioPlayer.setAsset(widget.song);
      if (isplaying) {
        audioPlayer.play();
        setState(() {
          playpauseButton = Image.asset("assets/pause.png");
          isplaying = false;
        });
      } else {
        audioPlayer.pause();
        setState(() {
          playpauseButton = Image.asset("assets/play.png");
          isplaying = true;
        });
      }
    } catch (e) {
      print(" error: $e");
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
      body: Stack(
        children: [
          Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/dsfsfsf-02.png",
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              )),

          //IMAGE
          Positioned(
            top: 140,
            left: 40,
            child: Container(
              height: 300,
              width: 300,
              child: Card(
                color: Color(0xff292727),
                elevation: 8,
                shadowColor: Colors.orange,
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Colors.orange),
                    borderRadius: BorderRadius.circular(20)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  "${widget.image}",
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),

          //TITLE
          Padding(
            padding: const EdgeInsets.only(top: 460.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                "${widget.title}",
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontFamily: GoogleFonts.secularOne().fontFamily,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),

//SUBTITLE
          Padding(
            padding: const EdgeInsets.only(top: 510.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                "${widget.subtitle}",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[500],
                  fontFamily: GoogleFonts.secularOne().fontFamily,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                "NOW PLAYING",
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontFamily: GoogleFonts.secularOne().fontFamily,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 18.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                  ),
                )),
          ),
          //SUBTITLE
          Padding(
            padding: const EdgeInsets.only(top: 678.0, left: 3.0),
            child: Align(
                alignment: Alignment.topCenter,
                child: InkWell(
                  onTap: toggleButton,
                  child: Container(height: 30, child: playpauseButton),
                )),
          ),
        ],
      ),
    );
  }
}
