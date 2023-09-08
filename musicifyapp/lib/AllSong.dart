import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'MainScreen.dart';

class AllSong extends StatefulWidget {
  const AllSong({super.key});

  @override
  State<AllSong> createState() => _AllSongState();
}

class _AllSongState extends State<AllSong> {
  var images2 = [
    "assets/a4.jpeg",
    "assets/a5.jpg",
    "assets/a1.jpg",
    "assets/a2.jpg",
    "assets/a3.jpg",
    "assets/s6.jpg",
    "assets/s7.jpeg",
    "assets/s8.jpg",
    "assets/s9.jpg",
    "assets/s10.jpg",
    "assets/a4.jpeg",
    "assets/a5.jpg",
    "assets/a1.jpg",
    "assets/a2.jpg",
    "assets/a3.jpg",
    "assets/s6.jpg",
    "assets/s7.jpeg",
    "assets/s8.jpg",
    "assets/s9.jpg",
    "assets/s10.jpg"
  ];
  var title2 = [
    "No Brainer",
    "Havana",
    "Attention",
    "At My Worst",
    "Love Yourself",
    "One more night",
    "Dusk Till Down",
    "Perfect",
    "Senorita",
    "Sugar",
    "No Brainer",
    "Havana",
    "Attention",
    "At My Worst",
    "Love Yourself",
    "One more night",
    "Dusk Till Down",
    "Perfect",
    "Senorita",
    "Sugar"
  ];

  var subtitle2 = [
    "DJ Khaled",
    "Camila Cabello",
    "Charlie Puth",
    "Pink Sweat",
    "Justin Bieber",
    "Phil Collins",
    "Zayn Malik",
    "Ed Sheeran",
    "Camila Cabello",
    "Maroon 5",
    "DJ Khaled",
    "Camila Cabello",
    "Charlie Puth",
    "Pink Sweat",
    "Justin Bieber",
    "Phil Collins",
    "Zayn Malik",
    "Ed Sheeran",
    "Camila Cabello",
    "Maroon 5",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff373434),
        automaticallyImplyLeading: false,
        title: Stack(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 50,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(top: 9.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "TOP LISTENING",
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontFamily: GoogleFonts.secularOne().fontFamily,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 50,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(top: 9.0, left: 5.0),
                  child: Text(
                    "(${images2.length})",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xff292727),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 10.0, right: 10.0, bottom: 10.0),
                child: Container(
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return Divider(
                        thickness: 3,
                        height: 3,
                      );
                    },
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MainScreen(
                                    images2.elementAt(index),
                                    title2.elementAt(index),
                                    subtitle2.elementAt(index),
                                    "assets/song.mp3"),
                              ));
                        },
                        child: Container(
                            width: double.infinity,
                            height: 110,
                            child: Card(
                              shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Color(0xff373434),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5.0, right: 5.0),
                                      child: Container(
                                        height: 90,
                                        width: 90,
                                        child: Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                side: BorderSide(
                                                    width: 2,
                                                    color: Colors.orange)),
                                            child: Image.asset(
                                              "${images2[index]}",
                                              fit: BoxFit.fitHeight,
                                            )),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 12.0, right: 10.0),
                                    child: Align(
                                        alignment: Alignment.topRight,
                                        child: index.floor().isEven
                                            ? Container(
                                                height: 30,
                                                width: 30,
                                                child: Image.asset(
                                                    "assets/heartorg.png"))
                                            : Container(
                                                height: 25,
                                                width: 25,
                                                child: Image.asset(
                                                    "assets/heart.png"))),
                                  ),
                                  Positioned(
                                    top: 15,
                                    left: 105,
                                    child: Text(
                                      "${title2[index]}",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                  Positioned(
                                    top: 42,
                                    left: 105,
                                    child: Text(
                                      "${subtitle2[index]}",
                                      style: TextStyle(
                                          color: Colors.grey[500],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    ),
                                  ),
                                  Positioned(
                                    top: 40,
                                    right: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 12.0),
                                      child: Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            height: 50,
                                            width: 50,
                                            child: Icon(
                                              Icons.play_circle_fill_rounded,
                                              color: Colors.white,
                                            ),
                                          )),
                                    ),
                                  ),
                                  Positioned(
                                    top: 54,
                                    right: 50,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 12.0),
                                      child: Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            height: 24,
                                            width: 24,
                                            child:
                                                Image.asset("assets/queue.png"),
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      );
                    },
                    itemCount: images2.length,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
