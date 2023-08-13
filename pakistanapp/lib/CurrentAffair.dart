import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pakistanapp/News1.dart';
import 'package:pakistanapp/News2.dart';
import 'package:pakistanapp/News3.dart';
import 'package:pakistanapp/News4.dart';
import 'package:pakistanapp/News5.dart';

class CurrentAffair extends StatelessWidget {
  const CurrentAffair({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Current Affair",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            //1st news
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 5.0, top: 8.0),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => News1(),
                        ));
                  },
                  child: Container(
                    width: 545,
                    color: Colors.green[900],
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "PML-N hopes SC order will not impede Nawaz’s return to country, politics",
                            style: TextStyle(
                                fontFamily: GoogleFonts.tinos().fontFamily,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: 200,
                                child: Image.asset("assets/1n.jpg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  width: 327,
                                  child: Text(
                                    "No restriction on Nawaz Sharif [to contest the election] as he has completed his five-year disqualification, says PM Shehbaz.",
                                    style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.tinos().fontFamily,
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "UPDATED ABOUT 7 HOURS AGO",
                                    style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.roboto().fontFamily,
                                        fontSize: 13,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.green[400]),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //2nd news
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 5.0, top: 8.0),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => News2(),
                        ));
                  },
                  child: Container(
                    width: 545,
                    color: Colors.green[900],
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Attock jail officials told to provide medical facilities to Imran, allow meetings with friends and family",
                            style: TextStyle(
                                fontFamily: GoogleFonts.tinos().fontFamily,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: 200,
                                child: Image.asset("assets/2n.jpg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  width: 327,
                                  child: Text(
                                    "He may also be provided with the prayer mat and English version of the Holy Quran, IHC rules; court summons record of Toshakhana case.",
                                    style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.tinos().fontFamily,
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "UPDATED ABOUT 4 HOURS AGO",
                                    style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.roboto().fontFamily,
                                        fontSize: 13,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.green[400]),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //3rd news
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 5.0, top: 8.0),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => News3(),
                        ));
                  },
                  child: Container(
                    width: 545,
                    color: Colors.green[900],
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Brother of ex-KP police chief killed after kidnapping in Dera Ismail Khan",
                            style: TextStyle(
                                fontFamily: GoogleFonts.tinos().fontFamily,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: 200,
                                child: Image.asset("assets/3n.jpg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  width: 327,
                                  child: Text(
                                    "PPP condemns killing of Malik Ghulam Habib Mehsud; policeman's relative shot dead in Kattakhel area; van with SHO attacked in Tank district.",
                                    style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.tinos().fontFamily,
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "UPDATED ABOUT 8 HOURS AGO",
                                    style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.roboto().fontFamily,
                                        fontSize: 13,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.green[400]),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //4th news
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 5.0, top: 8.0),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => News4(),
                        ));
                  },
                  child: Container(
                    width: 545,
                    color: Colors.green[900],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Governor dissolves Sindh Assembly",
                            style: TextStyle(
                                fontFamily: GoogleFonts.tinos().fontFamily,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: 200,
                                child: Image.asset("assets/4n.jpg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  width: 327,
                                  child: Text(
                                    "Murad Ali Shah will continue to hold office till appointment of caretaker chief minister.",
                                    style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.tinos().fontFamily,
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "UPDATED ABOUT 10 HOURS AGO",
                                    style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.roboto().fontFamily,
                                        fontSize: 13,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.green[400]),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //5th news
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 5.0, top: 8.0),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => News5(),
                        ));
                  },
                  child: Container(
                    width: 545,
                    color: Colors.green[900],
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "KP Governor accepts resignations of 14 ministers, 11 CM aides",
                            style: TextStyle(
                                fontFamily: GoogleFonts.tinos().fontFamily,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: 200,
                                child: Image.asset("assets/5n.jpg"),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  width: 327,
                                  child: Text(
                                    "CM Azam Khan had asked cabinet members to resign over their political affiliations",
                                    style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.tinos().fontFamily,
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "UPDATED ABOUT 8 HOURS AGO",
                                    style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.roboto().fontFamily,
                                        fontSize: 13,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.green[400]),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Back to Home")),
            )
          ],
        ),
      ),
    );
  }
}
