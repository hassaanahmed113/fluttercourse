import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            width: 500,
            height: 500,
            color: Color(0xff512da8),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  color: Colors.tealAccent,
                  width: 450,
                  height: 50,
                  child: Text(
                    "Student Information",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000000)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 450,
                  height: 380,
                  child: Text(
                    " Name: Hassaan Ahmed \n Age: 21 Years Old \n Education: Graduation \n Field: Computer Science \n Course: Flutter \n Duration: Six Months \n Phone Number: 03491431130 \n City: Karachi",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Color(0xffffffff)),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Colors.tealAccent,
                  width: 450,
                  height: 50,
                  child: Text(
                    "email: hassaanahmed@gmail.com",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000000)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
