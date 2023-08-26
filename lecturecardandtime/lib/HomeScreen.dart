import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Cards"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //simple card
            Card(
              child: Text(
                "${time.hour} and ${time.minute}",
                style: TextStyle(color: Colors.white),
              ),
              elevation: 8,
            ),
            //card with color and elevation
            Card(
              child: Text(
                "${time.hour} and ${time.minute}",
                style: TextStyle(color: Colors.white),
              ),
              elevation: 8,
              color: Colors.green,
            ),
            //card with color elevation and shadowcolor of card
            Card(
              child: Text("${DateFormat.Hms().format(time)}",
                  style: TextStyle(color: Colors.white)),
              color: Colors.indigo,
              elevation: 2,
              shadowColor: Colors.red,
            ),
            //card with color elevation and shadowcolor of card also with shape BeveledRectangleBorder
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("${DateFormat.yMd().format(time)}",
                    style: TextStyle(color: Colors.white)),
              ),
              color: Colors.indigo,
              elevation: 2,
              shadowColor: Colors.red,
              margin: EdgeInsets.all(20),
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            //card with color elevation and shadowcolor of card also with shape outlineborder
            Container(
              width: 200,
              height: 200,
              child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("${DateFormat.yMd().format(time)}",
                        style: TextStyle(color: Colors.white)),
                  ),
                  color: Colors.indigo,
                  elevation: 2,
                  shadowColor: Colors.red,
                  margin: EdgeInsets.all(20),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.green))),
            ),

            //card with sizing and cirle shape
            Container(
                width: 200,
                height: 200,
                child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text("${DateFormat.yMd().format(time)}",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    color: Colors.indigo,
                    elevation: 2,
                    shadowColor: Colors.red,
                    margin: EdgeInsets.all(20),
                    shape: CircleBorder(
                        side: BorderSide(width: 1, color: Colors.teal)))),
          ],
        ),
      ),
    );
  }
}
