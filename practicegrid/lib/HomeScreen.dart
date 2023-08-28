import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 600,
              child: GridView.count(
                  crossAxisCount: 3,
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      color: Colors.amber,
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      color: Colors.indigo,
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      color: Colors.red,
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      color: Colors.blue,
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      color: Colors.greenAccent,
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      color: Colors.green,
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      color: Colors.brown,
                      width: 100,
                      height: 100,
                    ),
                  ]),
            ),
            Container(
              height: 600,
              child: GridView.extent(
                maxCrossAxisExtent: 300,
                children: [
                  Container(
                    color: Colors.amber,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.indigo,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.red,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.blue,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.greenAccent,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.green,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.brown,
                    width: 100,
                    height: 100,
                    child: Text("${DateFormat.jms().format(time)}"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
