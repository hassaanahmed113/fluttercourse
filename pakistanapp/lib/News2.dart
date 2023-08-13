import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class News2 extends StatelessWidget {
  const News2({super.key});

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
              child: Container(width: 500, child: Image.asset("assets/2n.jpg")),
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "Attock jail officials told to provide medical facilities to Imran, allow meetings with friends and family",
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
                  "On Aug 5, an Islamabad trial court had declared Imran guilty of “corrupt practices” in a case pertaining to concealing details of state gifts and sentenced him to three years in prison. Soon after the verdict, he was arrested by the Punjab police from his Zaman Park residence in Lahore.\nThe trial court had ordered the Islamabad police chief to arrest the PTI chairman but he was instead arrested by the Lahore police. Moreover, the court had ordered the Adiala Jail superintendent to receive Imran but he was taken to the Attock Jail.\nThe PTI chief was given B-Class facilities by the Punjab prisons department. However, his lawyers had claimed that he was being kept in “distressing conditions” and was provided “C-Class jail facilities”.",
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
