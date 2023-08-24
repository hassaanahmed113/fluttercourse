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
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: 50,
              width: 100,
              color: Colors.orange[900],
            ),
          ),
          Positioned(
            top: 50,
            left: 100,
            child: Container(
              height: 50,
              width: 100,
              color: Colors.blue[900],
            ),
          ),
          Positioned(
            top: 100,
            left: 200,
            child: Container(
              height: 50,
              width: 100,
              color: Colors.orange[900],
            ),
          ),
          Positioned(
            top: 150,
            left: 300,
            child: Container(
              height: 50,
              width: 100,
              color: Colors.blue[900],
            ),
          ),
          Positioned(
            top: 200,
            left: 400,
            child: Container(
              height: 50,
              width: 100,
              color: Colors.orange[900],
            ),
          ),
          Positioned(
            top: 250,
            left: 500,
            child: Container(
              height: 50,
              width: 100,
              color: Colors.blue[900],
            ),
          ),
          Positioned(
            top: 300,
            left: 600,
            child: Container(
              height: 50,
              width: 100,
              color: Colors.orange[900],
            ),
          ),
          Positioned(
            top: 350,
            left: 700,
            child: Container(
              height: 50,
              width: 100,
              color: Colors.blue[900],
            ),
          ),
          Positioned(
            top: 400,
            left: 800,
            child: Container(
              height: 50,
              width: 100,
              color: Colors.orange[900],
            ),
          ),
          Positioned(
            top: 450,
            left: 900,
            child: Container(
              height: 50,
              width: 100,
              color: Colors.blue[900],
            ),
          ),
          Positioned(
            top: 500,
            left: 1000,
            child: Container(
              height: 50,
              width: 100,
              color: Colors.orange[900],
            ),
          ),
          Positioned(
            top: 550,
            left: 1100,
            child: Container(
              height: 50,
              width: 100,
              color: Colors.blue[900],
            ),
          ),
          Positioned(
            top: 600,
            left: 1200,
            child: Container(
              height: 50,
              width: 100,
              color: Colors.orange[900],
            ),
          ),
          Positioned(
            top: 650,
            left: 1300,
            child: Container(
              height: 50,
              width: 100,
              color: Colors.blue[900],
            ),
          ),
          Positioned(
            top: 700,
            left: 1400,
            child: Container(
              height: 50,
              width: 135,
              color: Colors.orange[900],
            ),
          ),
        ],
      ),
    );
  }
}
