import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Calender extends StatelessWidget {
  const Calender({super.key});

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
                "Calender",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Container(
                    width: 700,
                    child: Image.asset(
                        "assets/January - December 2023_page-0001.jpg")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Container(
                    width: 700,
                    child: Image.asset(
                        "assets/January - December 2023_page-0002.jpg")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Container(
                    width: 700,
                    child: Image.asset(
                        "assets/January - December 2023_page-0003.jpg")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Container(
                    width: 700,
                    child: Image.asset(
                        "assets/January - December 2023_page-0004.jpg")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Container(
                    width: 700,
                    child: Image.asset(
                        "assets/January - December 2023_page-0005.jpg")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Container(
                    width: 700,
                    child: Image.asset(
                        "assets/January - December 2023_page-0006.jpg")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Container(
                    width: 700,
                    child: Image.asset(
                        "assets/January - December 2023_page-0007.jpg")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Container(
                    width: 700,
                    child: Image.asset(
                        "assets/January - December 2023_page-0008.jpg")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Container(
                    width: 700,
                    child: Image.asset(
                        "assets/January - December 2023_page-0009.jpg")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Container(
                    width: 700,
                    child: Image.asset(
                        "assets/January - December 2023_page-0010.jpg")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Container(
                    width: 700,
                    child: Image.asset(
                        "assets/January - December 2023_page-0011.jpg")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Container(
                    width: 700,
                    child: Image.asset(
                        "assets/January - December 2023_page-0012.jpg")),
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
