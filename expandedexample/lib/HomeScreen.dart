import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: 400,
                height: 50,
                color: Color(0xffD9DEE0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "COMPANY CARD",
                    style: TextStyle(
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        fontSize: 28,
                        color: Color(0xff2D3445),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
              width: 400,
              height: 20,
              color: Color(0xff59647D),
            ),
            Expanded(
              flex: 4,
              child: Container(
                width: 400,
                height: 100,
                color: Color(0xff2D3445),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/user.jpeg"),
                        radius: 100,
                      ),
                    ),
                    Positioned(
                      top: 400,
                      left: 90,
                      child: Text(
                        "HASSAAN AHMED",
                        style: TextStyle(
                            fontFamily: GoogleFonts.roboto().fontFamily,
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      top: 440,
                      left: 118,
                      child: Text(
                        "Flutter Developer",
                        style: TextStyle(
                            fontFamily: GoogleFonts.roboto().fontFamily,
                            fontSize: 22,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 400,
              height: 20,
              color: Color(0xff59647D),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 400,
                height: 50,
                color: Color(0xffD9DEE0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                        leading: Icon(
                          Icons.phone,
                          color: Color(0xff2D3445),
                        ),
                        title: Text(
                          "+123-456-7890",
                          style: TextStyle(
                              fontFamily: GoogleFonts.roboto().fontFamily,
                              fontSize: 13,
                              color: Color(0xff2D3445),
                              fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(
                          Icons.done,
                          color: Color(0xff2D3445),
                        )),
                    ListTile(
                        leading: Icon(
                          Icons.mail,
                          color: Color(0xff2D3445),
                        ),
                        title: Text(
                          "hello@reallygreatsite.com",
                          style: TextStyle(
                              fontFamily: GoogleFonts.roboto().fontFamily,
                              fontSize: 13,
                              color: Color(0xff2D3445),
                              fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(
                          Icons.done,
                          color: Color(0xff2D3445),
                        )),
                    ListTile(
                        leading: Icon(
                          Icons.web,
                          color: Color(0xff2D3445),
                        ),
                        title: Text(
                          "www.reallygreatsite.com",
                          style: TextStyle(
                              fontFamily: GoogleFonts.roboto().fontFamily,
                              fontSize: 13,
                              color: Color(0xff2D3445),
                              fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(
                          Icons.done,
                          color: Color(0xff2D3445),
                        )),
                    ListTile(
                        leading: Icon(
                          Icons.location_city,
                          color: Color(0xff2D3445),
                        ),
                        title: Text(
                          "123 Anywhere St., Any City, ST 12345",
                          style: TextStyle(
                              fontFamily: GoogleFonts.roboto().fontFamily,
                              fontSize: 13,
                              color: Color(0xff2D3445),
                              fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(
                          Icons.done,
                          color: Color(0xff2D3445),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
