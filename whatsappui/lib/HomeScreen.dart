import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Calls.dart';
import 'Chats.dart';
import 'Status.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(112),
            child: AppBar(
              backgroundColor: Colors.green[500],
              title: Row(
                children: [
                  Text(
                    "Whatsapp",
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/user.jpeg"),
                      radius: 24,
                    ),
                  ),
                  SizedBox(
                    width: 42,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12.0,
                    ),
                    child: Icon(
                      Icons.camera_alt_rounded,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Container(
                        width: 25, child: Image.asset("assets/dots.png")),
                  ),
                ],
              ),
              bottom: TabBar(
                labelColor: Colors.white,
                labelStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                indicatorColor: Colors.white,
                unselectedLabelColor: Colors.grey[300],
                unselectedLabelStyle: TextStyle(fontSize: 17),
                tabs: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Container(width: 20, child: Icon(Icons.chat)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text("Chats"),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 14.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Container(
                              width: 20,
                              child: Icon(Icons.circle_notifications_outlined)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text("Status"),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 14.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Container(width: 20, child: Icon(Icons.phone)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text("Calls"),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(children: [Chats(), Status(), Calls()]),
        ));
  }
}
