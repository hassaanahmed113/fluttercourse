import 'dart:async';

import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("HELLO"),
            bottom: TabBar(tabs: [Text("1"), Text("2"), Text("3")]),
          ),
          body: TabBarView(
              children: [FirstScreen(), ThiredScreen(), FourthScreen()]),
        ));
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              onPressed: () {},
              child: Text("Hello")),
          OutlinedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange)),
              onPressed: () {},
              child: Text("Hello")),
          TextButton(onPressed: () {}, child: Text("Hello"))
        ],
      ),
    );
  }
}

class ThiredScreen extends StatelessWidget {
  const ThiredScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
