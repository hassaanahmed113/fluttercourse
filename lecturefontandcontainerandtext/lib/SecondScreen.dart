import 'package:flutter/material.dart';

import 'ThiredScreen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThiredScreen(),
                  ));
            },
            child: Text(
              "تعارفی صفحہ پر جائیں۔",
              style: TextStyle(fontSize: 30, fontFamily: 'urdufont'),
            )),
      ),
    );
  }
}
