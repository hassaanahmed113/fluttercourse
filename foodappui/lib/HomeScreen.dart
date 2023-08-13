import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 12.0, top: 20.0, bottom: 10.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Image.asset("assets/k.png"),
                ),
              ),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 12.0, top: 10.0, bottom: 3.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "EVERYDAY VALUE",
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: GoogleFonts.bebasNeue().fontFamily,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(
                  left: 13.0,
                  bottom: 10,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 50,
                    height: 5,
                    color: Colors.red,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 14.0),
                        child: Container(
                          width: 180,
                          color: Color(0xff1c1c14),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset("assets/love.png"),
                                  ),
                                ),
                                Container(
                                    width: 140,
                                    child: Image.asset("assets/1.png")),
                                Text("Krunch Burger",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400)),
                                Text(
                                  "Rs 270",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 14.0),
                        child: Container(
                          width: 180,
                          color: Color(0xff1c1c14),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset("assets/love.png"),
                                  ),
                                ),
                                Container(
                                    width: 140,
                                    child: Image.asset("assets/2.png")),
                                Text("Krunch Burger + Drink",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400)),
                                Text(
                                  "Rs 370",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 14.0),
                        child: Container(
                          width: 180,
                          color: Color(0xff1c1c14),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset("assets/love.png"),
                                  ),
                                ),
                                Container(
                                    width: 140,
                                    child: Image.asset("assets/3.png")),
                                Text("Krunch Combo",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400)),
                                Text(
                                  "Rs 520",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 14.0),
                        child: Container(
                          width: 180,
                          color: Color(0xff1c1c14),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset("assets/love.png"),
                                  ),
                                ),
                                Container(
                                    width: 140,
                                    child: Image.asset("assets/4.png")),
                                Text("Krunch Chicken Combo",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400)),
                                Text(
                                  "Rs 530",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 14.0),
                        child: Container(
                          width: 180,
                          color: Color(0xff1c1c14),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset("assets/love.png"),
                                  ),
                                ),
                                Container(
                                    width: 140,
                                    child: Image.asset("assets/5.png")),
                                Text("Chicken & Chips",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400)),
                                Text(
                                  "Rs 550",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 180,
                        color: Color(0xff1c1c14),
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  child: Image.asset("assets/love.png"),
                                ),
                              ),
                              Container(
                                  width: 140,
                                  child: Image.asset("assets/6.png")),
                              Text("Twister Combo",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400)),
                              Text(
                                "Rs 670",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 12.0, top: 10.0, bottom: 3.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "ALA-CARTE-&-COMBOS",
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: GoogleFonts.bebasNeue().fontFamily,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(
                  left: 13.0,
                  bottom: 10,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 50,
                    height: 5,
                    color: Colors.red,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 170,
                          height: 230,
                          color: Color(0xff1c1c14),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset("assets/love.png"),
                                  ),
                                ),
                                Container(
                                    width: 140,
                                    child: Image.asset("assets/z1.png")),
                                Text("Zinger Burger",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400)),
                                Text(
                                  "Rs 550",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Container(
                            width: 170,
                            height: 230,
                            color: Color(0xff1c1c14),
                            child: Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      child: Image.asset("assets/love.png"),
                                    ),
                                  ),
                                  Container(
                                      width: 140,
                                      child: Image.asset("assets/z2.png")),
                                  Text("Zinger Stacker",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400)),
                                  Text(
                                    "Rs 590",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Container(
                            width: 170,
                            height: 230,
                            color: Color(0xff1c1c14),
                            child: Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      child: Image.asset("assets/love.png"),
                                    ),
                                  ),
                                  Container(
                                      width: 140,
                                      child: Image.asset("assets/z3.png")),
                                  Text("Kentucky Burger",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400)),
                                  Text(
                                    "Rs 590",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Container(
                            width: 170,
                            height: 230,
                            color: Color(0xff1c1c14),
                            child: Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      child: Image.asset("assets/love.png"),
                                    ),
                                  ),
                                  Container(
                                      width: 140,
                                      child: Image.asset("assets/z4.png")),
                                  Text("Mighty Zinger",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400)),
                                  Text(
                                    "Rs 700",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 170,
                          height: 230,
                          color: Color(0xff1c1c14),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset("assets/love.png"),
                                  ),
                                ),
                                Container(
                                    width: 140,
                                    child: Image.asset("assets/z5.png")),
                                Text("Zinger Combo",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400)),
                                Text(
                                  "Rs 820",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Container(
                            width: 170,
                            height: 230,
                            color: Color(0xff1c1c14),
                            child: Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      child: Image.asset("assets/love.png"),
                                    ),
                                  ),
                                  Container(
                                      width: 140,
                                      child: Image.asset("assets/z6.png")),
                                  Text("Zng Stacker Combo",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400)),
                                  Text(
                                    "Rs 850",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Container(
                            width: 170,
                            height: 230,
                            color: Color(0xff1c1c14),
                            child: Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      child: Image.asset("assets/love.png"),
                                    ),
                                  ),
                                  Container(
                                      width: 140,
                                      child: Image.asset("assets/z7.png")),
                                  Text("Kentcky Burger Combo",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400)),
                                  Text(
                                    "Rs 850",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Container(
                            width: 170,
                            height: 230,
                            color: Color(0xff1c1c14),
                            child: Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      child: Image.asset("assets/love.png"),
                                    ),
                                  ),
                                  Container(
                                      width: 140,
                                      child: Image.asset("assets/z8.png")),
                                  Text("Mighty Zinger Combo",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400)),
                                  Text(
                                    "Rs 960",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 12.0, top: 10.0, bottom: 3.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "SIGNATURE-BOXES",
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: GoogleFonts.bebasNeue().fontFamily,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(
                  left: 13.0,
                  bottom: 10,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 50,
                    height: 5,
                    color: Colors.red,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 14.0),
                        child: Container(
                          width: 180,
                          color: Color(0xff1c1c14),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset("assets/love.png"),
                                  ),
                                ),
                                Container(
                                    width: 140,
                                    child: Image.asset("assets/s1.png")),
                                Text("Crispy Box",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400)),
                                Text(
                                  "Rs 650",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 14.0),
                        child: Container(
                          width: 180,
                          color: Color(0xff1c1c14),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset("assets/love.png"),
                                  ),
                                ),
                                Container(
                                    width: 140,
                                    child: Image.asset("assets/s2.png")),
                                Text("Boneless Box",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400)),
                                Text(
                                  "Rs 670",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 14.0),
                        child: Container(
                          width: 180,
                          color: Color(0xff1c1c14),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset("assets/love.png"),
                                  ),
                                ),
                                Container(
                                    width: 140,
                                    child: Image.asset("assets/s3.png")),
                                Text("Wow Box",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400)),
                                Text(
                                  "Rs 950",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 14.0),
                        child: Container(
                          width: 180,
                          color: Color(0xff1c1c14),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset("assets/love.png"),
                                  ),
                                ),
                                Container(
                                    width: 140,
                                    child: Image.asset("assets/s4.png")),
                                Text("Crispy Duo Box",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400)),
                                Text(
                                  "Rs 1250",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 180,
                        color: Color(0xff1c1c14),
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  child: Image.asset("assets/love.png"),
                                ),
                              ),
                              Container(
                                  width: 140,
                                  child: Image.asset("assets/s5.png")),
                              Text("Xtreme Duo Box",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400)),
                              Text(
                                "Rs 1450",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 12.0, top: 10.0, bottom: 3.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "SNACKS-&-BEVERAGES",
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: GoogleFonts.bebasNeue().fontFamily,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(
                  left: 13.0,
                  bottom: 10,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 50,
                    height: 5,
                    color: Colors.red,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 14.0),
                        child: Container(
                          width: 180,
                          color: Color(0xff1c1c14),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset("assets/love.png"),
                                  ),
                                ),
                                Container(
                                    width: 140,
                                    child: Image.asset("assets/n1.png")),
                                Text("Dinner Roll",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400)),
                                Text(
                                  "Rs 50",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 14.0),
                        child: Container(
                          width: 180,
                          color: Color(0xff1c1c14),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset("assets/love.png"),
                                  ),
                                ),
                                Container(
                                    width: 140,
                                    child: Image.asset("assets/n2.png")),
                                Text("Mineral Water 500ml",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400)),
                                Text(
                                  "Rs 90",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 14.0),
                        child: Container(
                          width: 180,
                          color: Color(0xff1c1c14),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset("assets/love.png"),
                                  ),
                                ),
                                Container(
                                    width: 140,
                                    child: Image.asset("assets/n3.png")),
                                Text("Coleslaw",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400)),
                                Text(
                                  "Rs 100",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 14.0),
                        child: Container(
                          width: 180,
                          color: Color(0xff1c1c14),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset("assets/love.png"),
                                  ),
                                ),
                                Container(
                                    width: 140,
                                    child: Image.asset("assets/n4.png")),
                                Text("Pepsi Regular",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400)),
                                Text(
                                  "Rs 140",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 14.0),
                        child: Container(
                          width: 180,
                          color: Color(0xff1c1c14),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset("assets/love.png"),
                                  ),
                                ),
                                Container(
                                    width: 140,
                                    child: Image.asset("assets/n5.png")),
                                Text("Mirinda Regular",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400)),
                                Text(
                                  "Rs 140",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 14.0),
                        child: Container(
                          width: 180,
                          color: Color(0xff1c1c14),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset("assets/love.png"),
                                  ),
                                ),
                                Container(
                                    width: 140,
                                    child: Image.asset("assets/n6.png")),
                                Text("Mountain Dew Regular",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400)),
                                Text(
                                  "Rs 140",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 14.0),
                        child: Container(
                          width: 180,
                          color: Color(0xff1c1c14),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset("assets/love.png"),
                                  ),
                                ),
                                Container(
                                    width: 140,
                                    child: Image.asset("assets/n7.png")),
                                Text("7UP Regular",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400)),
                                Text(
                                  "Rs 140",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 14.0),
                        child: Container(
                          width: 180,
                          color: Color(0xff1c1c14),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset("assets/love.png"),
                                  ),
                                ),
                                Container(
                                    width: 140,
                                    child: Image.asset("assets/n8.png")),
                                Text("1.5 Ltr Drink",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400)),
                                Text(
                                  "Rs 250",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 180,
                        color: Color(0xff1c1c14),
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  child: Image.asset("assets/love.png"),
                                ),
                              ),
                              Container(
                                  width: 140,
                                  child: Image.asset("assets/n9.png")),
                              Text("Fries",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400)),
                              Text(
                                "Rs 270",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ])));
  }
}
