import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 500,
            color: Colors.green[900],
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Pak History Unfolded",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 40,
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Center(
              child: Container(width: 500, child: Image.asset("assets/12.jpg")),
            ),
          ),
          Container(
            color: Colors.green[900],
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "One nation, one destination",
                style: TextStyle(
                    fontSize: 40,
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
