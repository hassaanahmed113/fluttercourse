import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondScreen extends StatefulWidget {
  var image, title, price;
  SecondScreen(this.image, this.title, this.price, {super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            child:
                                Image.asset("assets/Untitled design copy.png"),
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
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily),
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
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily),
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
            Container(
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 5.0, bottom: 2.0),
                        child: Container(
                          height: 20,
                          child: Row(
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Home  >",
                                    style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.roboto().fontFamily,
                                        fontSize: 16,
                                        color: Colors.grey[500])),
                              ),
                              Text(
                                " ${widget.title}",
                                style: TextStyle(
                                    fontFamily: GoogleFonts.roboto().fontFamily,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Color(0xffea3b05)),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Image.asset(
                                        "assets/gradient.PNG",
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Image.asset(
                                        "assets/gradient.PNG",
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Card(
                                        elevation: 12,
                                        shadowColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            side: BorderSide(
                                                width: 2, color: Colors.white)),
                                        child: Image.asset(
                                          "${widget.image}",
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 6.0),
                            child: Text(
                              "${widget.title}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 6.0),
                            child: Card(
                              color: Colors.grey[400],
                              shape: CircleBorder(),
                              child: Padding(
                                padding: const EdgeInsets.all(9.0),
                                child: Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset("assets/heart.png")),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              height: 70,
                              child: Card(
                                color: Color(0xffea3b05),
                                shape: CircleBorder(),
                                child: Center(
                                  child: SizedBox.fromSize(
                                    size: Size.fromRadius(18),
                                    child: FittedBox(
                                      child: Icon(
                                        CupertinoIcons.minus,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 180,
                            child: Card(
                              child: Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                      fontSize: 21, color: Colors.black87),
                                ),
                              ),
                              shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.grey)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                              height: 70,
                              child: Card(
                                color: Color(0xffea3b05),
                                shape: CircleBorder(),
                                child: Center(
                                  child: SizedBox.fromSize(
                                    size: Size.fromRadius(18),
                                    child: FittedBox(
                                      child: Icon(
                                        CupertinoIcons.plus,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              right: 5.0, left: 5.0, bottom: 8.0),
                          child: Container(
                            width: double.infinity,
                            child: Card(
                              color: Color(0xffea3b05),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Text(
                                        "Rs. ${widget.price}",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 5.0),
                                      child: Text(
                                        " Add To Cart",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: GoogleFonts.roboto()
                                                .fontFamily),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xffea3b05))),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Back",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
