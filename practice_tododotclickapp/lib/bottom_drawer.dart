import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:practice_tododotclickapp/Home.dart';

class BottomDrawer extends StatefulWidget {
  const BottomDrawer({super.key});

  @override
  State<BottomDrawer> createState() => _BottomDrawerState();
}

class _BottomDrawerState extends State<BottomDrawer> {
  int _currentIndex = 0;
  void changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final pages = [Home(), Container(), Container(), Container()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text("fas"),
      ),
      body: pages[_currentIndex],
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Hassaan"),
              accountEmail: Text(
                "gmail.com",
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'data:image/jpeg;base64,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'),
              ),
            ),
            ListTile(
              title: Text("Buttone one"),
              onTap: () {
                print("button one");
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: DotNavigationBar(
        currentIndex: _currentIndex,
        onTap: changePage,
        // dotIndicatorColor: Colors.black,
        items: [
          /// Home
          DotNavigationBarItem(
            icon: Icon(Icons.home),
            selectedColor: Colors.purple,
          ),

          /// Likes
          DotNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            selectedColor: Colors.pink,
          ),

          /// Search
          DotNavigationBarItem(
            icon: Icon(Icons.search),
            selectedColor: Colors.orange,
          ),

          /// Profile
          DotNavigationBarItem(
            icon: Icon(Icons.person),
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
