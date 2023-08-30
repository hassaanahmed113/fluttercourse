import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizzamaxapp/big.dart';
import 'package:pizzamaxapp/maxoff.dart';
import 'package:pizzamaxapp/maxvalue.dart';
import 'package:pizzamaxapp/midnight.dart';
import 'package:pizzamaxapp/promodeal.dart';
import 'package:pizzamaxapp/royal.dart';

var bimage = [
  "assets/b1.PNG",
  "assets/b2.PNG",
  "assets/b3.PNG",
  "assets/b4.PNG",
  "assets/b5.PNG",
  "assets/b6.PNG"
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 100,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 35.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Image.asset(
                                  "assets/Untitled design copy.png"),
                            ),
                          ),
                          Positioned(
                            top: 13,
                            left: 44,
                            child: Container(
                                height: 60,
                                child: Image.asset("assets/Capture.PNG")),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Container(
                              width: 190,
                              child: Card(
                                color: Colors.grey[300],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 17,
                                        child: Image.asset(
                                          "assets/profile.png",
                                        ),
                                      ),
                                      Text(
                                        " Sign in / Register",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: GoogleFonts.roboto()
                                                .fontFamily),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Container(
                              width: 140,
                              child: Card(
                                color: Color(0xffea3b05),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 17,
                                        child: Image.asset(
                                          "assets/bag.png",
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "View Cart",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: GoogleFonts.roboto()
                                                .fontFamily),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Card(
                              child: Image.asset("${bimage[index]}"),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            );
                          },
                          itemCount: bimage.length,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              TabBar(
                  indicatorColor: Color(0xffea3b05),
                  unselectedLabelColor: Colors.grey,
                  unselectedLabelStyle: TextStyle(fontSize: 14),
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  isScrollable: true,
                  labelColor: Color(0xffea3b05),
                  labelPadding: EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15.0, bottom: 15.0),
                  tabs: [
                    Text(
                      "PROMO DEALS",
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                    Text(
                      "MAX 50% OFF",
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                    Text(
                      "MIDNIGHT DEALS",
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                    Text(
                      "MAX VALUE DEALS",
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                    Text(
                      "2 BIG 2 BETTER",
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                    Text(
                      "ROYAL CROWN PIZZA",
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ]),
              Container(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(children: [
                  promodeal(),
                  maxoff(),
                  midnight(),
                  maxvalue(),
                  big(),
                  royal()
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
