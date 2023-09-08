import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import 'package:quran/quran.dart' as quran;

class Surahs extends StatefulWidget {
  int indexsurah;
  Surahs({required this.indexsurah, super.key});

  @override
  State<Surahs> createState() => _SurahsState();
}

class _SurahsState extends State<Surahs> {
  AudioPlayer audioPlayer = AudioPlayer();
  IconData playpauseButton = Icons.play_circle_fill_rounded;
  bool isplaying = false;

  Future<void> toggleButton() async {
    try {
      final audiourl = await quran.getAudioURLBySurah(widget.indexsurah);
      audioPlayer.setUrl(audiourl);
      print(audiourl);
      if (isplaying) {
        audioPlayer.pause();
        setState(() {
          playpauseButton = Icons.play_circle_filled_rounded;
          isplaying = false;
        });
      } else {
        audioPlayer.play();
        setState(() {
          playpauseButton = Icons.pause_circle_filled_rounded;
          isplaying = true;
        });
      }
    } catch (e) {
      print("error: $e");
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
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: Container(
                  width: double.infinity,
                  color: Colors.orange[900],
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back),
                          color: Colors.white,
                        ),
                        InkWell(
                            onTap: toggleButton,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: Colors.white, width: 2)),
                              child: Icon(
                                playpauseButton,
                                size: 35.0,
                                color: Colors.white,
                              ),
                            )),
                        Text(
                          "${quran.getSurahNameArabic(widget.indexsurah)}",
                          style: TextStyle(
                              fontFamily: 'arabicfont',
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.white,
                      height: 3,
                      thickness: 2,
                    );
                  },
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Surahs(
                                indexsurah: index + 1,
                              ),
                            ));
                      },
                      tileColor: Colors.green[700],
                      title: Text(
                        "${quran.getVerse(widget.indexsurah, index + 1, verseEndSymbol: true)}",
                        style: TextStyle(
                            fontFamily: 'arabicfont',
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white),
                        textAlign: TextAlign.right,
                      ),
                    );
                  },
                  itemCount: quran.getVerseCount(widget.indexsurah),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
