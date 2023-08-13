import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class News3 extends StatelessWidget {
  const News3({super.key});

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
              child: Container(width: 500, child: Image.asset("assets/3n.jpg")),
            ),
            Center(
              child: Container(
                width: 500,
                child: Text(
                  "Brother of ex-KP police chief killed after kidnapping in Dera Ismail Khan",
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
                  "Giving details in a press conference on Friday, District Police Officer (DPO) Waqar Ahmed stated that four unknown assailants, riding two motorcycles, kidnapped Malik Ghulam Habib Mehsud while he was heading home and later killed him.\nShortly after the incident, a police vehicle of SHO Gomal was travelling along a road when they spotted motorcyclists rapidly proceeding from a dirt road onto a main road.\nBecoming suspicious, the police attempted to intercept one of the motorcycles, aboard which two assailants were whisking away Ghulam Habib. However, the motorcyclists accelerated instead.\nAs policemen started chasing them, the motorcyclists opened fire on the police party and five bullets pierced through the vehicle. However, policemen remained unhurt. The police also retaliated and injured one of the assailants and started a search in their pursuit.",
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
