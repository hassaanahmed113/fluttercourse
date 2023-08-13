import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class News5 extends StatelessWidget {
  const News5({super.key});

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
              child: Container(width: 500, child: Image.asset("assets/5n.jpg")),
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "KP Governor accepts resignations of 14 ministers, 11 CM aides",
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
                  "The administration department sent the first summary to the chief minister on Thursday (August 10) requesting him to advise the governor to accept the resignations of 14 ministers under the Constitution’s Article 132(3) read with Article 105 (1).\nThe chief minister later advised the governor to accept the resignations. The governor acted accordingly.\nAnother summary was moved the same day by the administration department requesting the chief minister to advise the governor to accept the resignations of his six special assistants and five advisers. The summary was sent to the governor on August 10 and was approved by him on Friday.\nThe resignations were tendered by the caretaker minister, advisers and special assistants on Thursday over a cup of tea after Chief Minister Azam Khan asked them to do so “voluntarily”. The chief minister warned them that if they didn’t resign, they would be de-notified.",
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
