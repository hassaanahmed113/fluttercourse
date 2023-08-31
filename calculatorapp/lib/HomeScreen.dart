import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var cal1 = ['e', 'µ', 'sin', 'deg'];
  var cal2 = ['Ac', 'assets/Untitled design (1).png', '/', '*'];
  var cal3 = ['7', '8', '9', '4', '5', '6', '1', '2', '3'];
  var cal4 = ['-', '+', '='];
  var cal5 = ['0', '.'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            bottom: 0,
            child: Image.asset(
              "assets/Untitled design.png",
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
            top: 200,
            right: 35,
            child: Row(
              children: [
                Text(
                  "6000",
                  style: TextStyle(
                      color: Color(0xff818181),
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.roboto().fontFamily),
                ),
                Text(
                  "/",
                  style: TextStyle(
                      color: Color(0xff10B7FF),
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.roboto().fontFamily),
                ),
                Text(
                  "2",
                  style: TextStyle(
                      color: Color(0xff818181),
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.roboto().fontFamily),
                ),
                Text(
                  "+",
                  style: TextStyle(
                      color: Color(0xff10B7FF),
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.roboto().fontFamily),
                ),
                Text(
                  "3227",
                  style: TextStyle(
                      color: Color(0xff818181),
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.roboto().fontFamily),
                ),
                Text(
                  "*",
                  style: TextStyle(
                      color: Color(0xff10B7FF),
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.roboto().fontFamily),
                ),
                Text(
                  "2",
                  style: TextStyle(
                      color: Color(0xff818181),
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.roboto().fontFamily),
                ),
              ],
            ),
          ),
          Positioned(
            top: 240,
            right: 35,
            child: Text(
              "=12,454",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 43,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.roboto().fontFamily),
            ),
          ),
          Positioned(
            top: 340,
            right: 25,
            left: 25,
            bottom: 445,
            child: Container(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cal1.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Container(
                      height: 16,
                      width: 81,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        color: Color(0xff363035),
                        child: Center(
                          child: Text(
                            "${cal1[index]}",
                            style: TextStyle(
                                color: Color(0xff29A8FF),
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.roboto().fontFamily),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
            top: 410,
            right: 25,
            left: 25,
            bottom: 355,
            child: Container(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cal1.length,
                itemBuilder: (context, index) {
                  return index == 2 || index == 3
                      ? Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Container(
                            height: 16,
                            width: 81,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              color: Color(0xff740076),
                              child: Center(
                                child: Text(
                                  "${cal2[index]}",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily),
                                ),
                              ),
                            ),
                          ),
                        )
                      : index == 0
                          ? Padding(
                              padding: const EdgeInsets.only(right: 4.0),
                              child: Container(
                                height: 16,
                                width: 81,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  color: Color(0xff363035),
                                  child: Center(
                                    child: Text(
                                      "${cal2[index]}",
                                      style: TextStyle(
                                          color: Color(0xffA5A5A5),
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold,
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(right: 4.0),
                              child: Container(
                                height: 16,
                                width: 81,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  color: Color(0xff363035),
                                  child: Center(
                                      child: Container(
                                          height: 60,
                                          child:
                                              Image.asset("${cal2[index]}"))),
                                ),
                              ),
                            );
                },
              ),
            ),
          ),
          Positioned(
              top: 500,
              right: 110,
              left: 25,
              bottom: 50,
              child: Container(
                  child: GridView.builder(
                itemCount: cal3.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 2, mainAxisExtent: 85, crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Container(
                      height: 16,
                      width: 81,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Color(0xff363035),
                        child: Center(
                          child: Text(
                            "${cal3[index]}",
                            style: TextStyle(
                                color: Color(0xff10B7FF),
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.roboto().fontFamily),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ))),
          Positioned(
              top: 500,
              right: 25,
              left: 283,
              bottom: 20,
              child: Container(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return index == 0
                        ? Padding(
                            padding:
                                const EdgeInsets.only(right: 4.0, bottom: 7.0),
                            child: Container(
                              height: 75,
                              width: 80,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                color: Color(0xff740076),
                                child: Center(
                                  child: Text(
                                    "${cal4[index]}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 38,
                                        fontWeight: FontWeight.bold,
                                        fontFamily:
                                            GoogleFonts.roboto().fontFamily),
                                  ),
                                ),
                              ),
                            ),
                          )
                        : index == 1
                            ? Padding(
                                padding: const EdgeInsets.only(
                                    right: 4.0, bottom: 7.0),
                                child: Container(
                                  height: 120,
                                  width: 80,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    color: Color(0xff740076),
                                    child: Center(
                                      child: Text(
                                        "${cal4[index]}",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 32,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: GoogleFonts.roboto()
                                                .fontFamily),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.only(right: 4.0),
                                child: Container(
                                  height: 120,
                                  width: 80,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    color: Color(0xff740076),
                                    child: Center(
                                      child: Text(
                                        "${cal4[index]}",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 32,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: GoogleFonts.roboto()
                                                .fontFamily),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                  },
                  itemCount: cal4.length,
                ),
              )),
          Positioned(
              top: 765,
              right: 110,
              left: 25,
              bottom: 15,
              child: Container(
                  child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cal5.length,
                itemBuilder: (context, index) {
                  return index == 0
                      ? Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Container(
                            height: 16,
                            width: 170,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              color: Color(0xff363035),
                              child: Center(
                                child: Text(
                                  "${cal5[index]}",
                                  style: TextStyle(
                                      color: Color(0xff10B7FF),
                                      fontSize: 29,
                                      fontWeight: FontWeight.bold,
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily),
                                ),
                              ),
                            ),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Container(
                            height: 16,
                            width: 80,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              color: Color(0xff363035),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "${cal5[index]}",
                                  style: TextStyle(
                                      color: Color(0xff10B7FF),
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily),
                                ),
                              ),
                            ),
                          ),
                        );
                },
              ))),
        ],
      ),
    );
  }
}
