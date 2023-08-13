import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class News4 extends StatelessWidget {
  const News4({super.key});

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
              child: Container(width: 500, child: Image.asset("assets/4n.jpg")),
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "Governor dissolves Sindh Assembly",
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
                  "As per the law, Mr Shah will continue to hold the office till the appointment of a caretaker chief minister. However, his cabinet stands dissolved.\nAccording to the Constitution, the governor shall dissolve the provincial assembly if so advised by the chief minister; and the provincial assembly shall, unless sooner dissolved, stand dissolved at the expiration of forty-eight hours after the chief minister has so advised.\nThe outgoing CM and Opposition Leader Rana Ansar, who belongs to the Muttahida Qaumi Move­ment-Pakistan, are expec­ted to hold consultations regarding the caretaker set-up in the province.\nIt is widely believed that the PPP and MQM-P, the second largest opposition party in the provincial assembly, would reach consensus over the candidate for the office of caretaker chief minister.",
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
