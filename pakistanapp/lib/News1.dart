import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class News1 extends StatelessWidget {
  const News1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(width: 500, child: Image.asset("assets/1n.jpg")),
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "PML-N hopes SC order will not impede Nawaz’s return to country, politics",
                  style: TextStyle(
                      fontFamily: GoogleFonts.tinos().fontFamily,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[700]),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "ISLAMABAD: PML-N leaders remained hopeful that the party supremo Nawaz Sharif will return to Pakistan and even lead the election campaign despite the Supreme Court’s decision to strike down the law to expand the scope of a review petition.\nThe court said the parliament had gone beyond its legislative competence by enacting the Supreme Court (Review of Judge­ments and Orders) Act, 2023.\nThe decision prompted a sharp rebuke from PML-N leaders who assailed the verdict, calling it a “contempt of parliament”. Leading the outcry, Prime Minister Shehbaz Sharif said parliament was empowered to make laws and this was the first time in history that legislation was stopped in anticipation.\n“I have not seen it happening anywhere in the world,” the prime minister said during an interview with Samaa TV on Friday.",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                  textAlign: TextAlign.left,
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
