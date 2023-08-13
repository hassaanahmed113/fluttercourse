import 'dart:async';

import 'package:flutter/material.dart';

import 'SecondScreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SecondScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
                width: 400, height: 400, child: Image.asset("assets/4755.jpg")),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "جنون سے، اور عشق سے ملتی ہے آزادی",
              style: TextStyle(
                  fontFamily: 'urdufont',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
          )
        ],
      ),
    );
  }
}
