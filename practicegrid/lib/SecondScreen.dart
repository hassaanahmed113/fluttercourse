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
          body: TabBarView(children: [fscreen(), ffscreen(), fffscreen()]),
        ));
  }
}

class fscreen extends StatelessWidget {
  const fscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape:
                CircleBorder(side: BorderSide(width: 1, color: Colors.green)),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}

class ffscreen extends StatelessWidget {
  const ffscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class fffscreen extends StatelessWidget {
  const fffscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
