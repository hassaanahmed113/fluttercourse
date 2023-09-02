import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Accessories.dart';
import 'Beauty.dart';
import 'Men.dart';
import 'Women.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(height: 40, child: Image.asset("assets/drawer.png")),
              Text(
                "ShopBag",
                style: TextStyle(
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Container(height: 50, child: Image.asset("assets/noti.png")),
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              TabBar(indicatorColor: Colors.black, tabs: [
                Container(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        color: Color(0xffF3F3F3),
                        shape: CircleBorder(),
                        child: Center(
                          child: Image.asset(
                            "assets/women.png",
                            color: Color(0xff9D9D9D),
                          ),
                        ),
                      ),
                      Text(
                        "Women",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        color: Color(0xffF3F3F3),
                        shape: CircleBorder(),
                        child: Center(
                          child: Image.asset("assets/men.png"),
                        ),
                      ),
                      Text(
                        "Men",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        color: Color(0xffF3F3F3),
                        shape: CircleBorder(),
                        child: Center(
                          child: Image.asset("assets/accessories.png"),
                        ),
                      ),
                      Text(
                        "Accessories",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        color: Color(0xffF3F3F3),
                        shape: CircleBorder(),
                        child: Center(
                          child: Image.asset("assets/beauty.png"),
                        ),
                      ),
                      Text(
                        "Beauty",
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      )
                    ],
                  ),
                ),
              ]),
              Container(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(children: [
                  Women(),
                  Men(),
                  Accessories(),
                  Beauty(),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
