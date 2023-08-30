import 'dart:async';

import 'package:flutter/material.dart';

import 'HOmeScreen.dart';

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
      backgroundColor: Color(0xffea3b05),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Image.asset(
            "assets/Capture.PNG",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
