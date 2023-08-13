import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pakistanapp/Calender.dart';
import 'package:pakistanapp/CurrentAffair.dart';
import 'package:pakistanapp/History.dart';
import 'package:pakistanapp/Province.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Home",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => History(),
                          ));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 200,
                      height: 200,
                      child: Text(
                        "HISTORY",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: GoogleFonts.roboto().fontFamily),
                        textAlign: TextAlign.center,
                      ),
                      color: Colors.green[900],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Province(),
                          ));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 200,
                      height: 200,
                      child: Text(
                        "PROVINCE",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: GoogleFonts.roboto().fontFamily),
                        textAlign: TextAlign.center,
                      ),
                      color: Colors.green[900],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CurrentAffair(),
                          ));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 200,
                      height: 200,
                      child: Text(
                        "CURRENT AFFAIR",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: GoogleFonts.roboto().fontFamily),
                        textAlign: TextAlign.center,
                      ),
                      color: Colors.green[900],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Calender(),
                          ));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 200,
                      height: 200,
                      child: Text(
                        "CALENDER",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: GoogleFonts.roboto().fontFamily),
                        textAlign: TextAlign.center,
                      ),
                      color: Colors.green[900],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
