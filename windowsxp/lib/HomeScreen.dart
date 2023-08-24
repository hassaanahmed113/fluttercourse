import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                child: Image.asset("assets/winxpblisshero_0.png"),
              )),
          Positioned(
            bottom: 145,
            left: 565,
            child: Text(
              "Microsoft",
              style: TextStyle(color: Colors.white, fontSize: 33),
            ),
          ),
          Positioned(
            bottom: 45,
            left: 565,
            child: Text(
              "Windows",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 100),
            ),
          ),
          Positioned(
            bottom: 90,
            right: 505,
            child: Text(
              "xp",
              style: TextStyle(
                  color: Colors.orange[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 50),
            ),
          ),
          Positioned(
            top: 145,
            left: 560,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.orange[800],
            ),
          ),
          Positioned(
            top: 160,
            right: 560,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.green[400],
            ),
          ),
          Positioned(
            bottom: 189,
            left: 560,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue[800],
            ),
          ),
          Positioned(
            bottom: 174,
            right: 560,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.yellow[700],
            ),
          ),
        ],
      ),
    );
  }
}
