import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicifyapp/MainScreen.dart';

import 'AllSong.dart';

var images = [
  "assets/s1.jpg",
  "assets/s2.jpg",
  "assets/s3.jpg",
  "assets/s4.jpg",
  "assets/s5.jpg",
  "assets/s6.jpg",
  "assets/s7.jpeg",
  "assets/s8.jpg",
  "assets/s9.jpg",
  "assets/s10.jpg"
];
var title = [
  "Friends",
  "Bad Habits",
  "Peaches",
  "Memories",
  "On my way",
  "One more night",
  "Dusk Till Down",
  "Perfect",
  "Senorita",
  "Sugar"
];

var subtitle = [
  "Anne-Marie",
  "Ed Sheeran",
  "Justin Bieber",
  "Maroon 5",
  "Maroon 5",
  "Phil Collins",
  "Zayn Malik",
  "Ed Sheeran",
  "Camila Cabello",
  "Maroon 5"
];

var images1 = [
  "assets/a1.jpg",
  "assets/a2.jpg",
  "assets/a3.jpg",
  "assets/s4.jpg",
  "assets/s5.jpg",
  "assets/s6.jpg",
  "assets/s7.jpeg",
  "assets/s8.jpg",
  "assets/s9.jpg",
  "assets/s10.jpg"
];
var title1 = [
  "Attention",
  "At My Worst",
  "Love Yourself",
  "Memories",
  "On my way",
  "One more night",
  "Dusk Till Down",
  "Perfect",
  "Senorita",
  "Sugar"
];

var subtitle1 = [
  "Charlie Puth",
  "Pink Sweat",
  "Justin Bieber",
  "Maroon 5",
  "Maroon 5",
  "Phil Collins",
  "Zayn Malik",
  "Ed Sheeran",
  "Camila Cabello",
  "Maroon 5"
];

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
  "Maroon 5"
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff292727),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //Trending
            Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, top: 12.0, bottom: 5.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "TRENDING",
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontFamily: GoogleFonts.secularOne().fontFamily,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 140,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MainScreen(
                                      images.elementAt(index),
                                      title.elementAt(index),
                                      subtitle.elementAt(index)),
                                ));
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Container(
                                    height: 120,
                                    width: 120,
                                    child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        child: Image.asset(
                                          "${images[index]}",
                                          fit: BoxFit.fitHeight,
                                        ),
                                        shadowColor: Colors.orange,
                                        elevation: 5,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            side: BorderSide(
                                                width: 2,
                                                color: Colors.orange))),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    "${title[index]}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: images.length,
                    ),
                  ))
                ],
              ),
            ),

            //GREATEST HITS
            Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, top: 12.0, bottom: 5.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "GREATEST HITS",
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontFamily: GoogleFonts.secularOne().fontFamily,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 140,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MainScreen(
                                      images1.elementAt(index),
                                      title1.elementAt(index),
                                      subtitle1.elementAt(index)),
                                ));
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Container(
                                    height: 120,
                                    width: 120,
                                    child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        child: Image.asset(
                                          "${images1[index]}",
                                          fit: BoxFit.fitHeight,
                                        ),
                                        shadowColor: Colors.orange,
                                        elevation: 5,
                                        shape: CircleBorder(
                                            side: BorderSide(
                                                width: 2,
                                                color: Colors.orange))),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    "${title1[index]}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: images.length,
                    ),
                  ))
                ],
              ),
            ),

            //Top Listening
            Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, top: 12.0, bottom: 5.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "TOP LISTENING",
                      style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontFamily: GoogleFonts.secularOne().fontFamily,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AllSong(),
                              ));
                        },
                        child: Container(
                          child: Text(
                            "See all",
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
            ),
            Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10.0, bottom: 10.0),
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
                                    subtitle2.elementAt(index)),
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
                                ],
                              ),
                            )),
                      );
                    },
                    itemCount: images.length,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
