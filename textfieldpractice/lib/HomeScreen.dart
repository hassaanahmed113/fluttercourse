import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  var mail, pass;
  HomeScreen(this.mail, this.pass, {super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Align(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/ss-01.png",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            )),
        Align(
          alignment: Alignment.center,
          child: Opacity(
            opacity: 0.4,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Container(
                height: 460,
                width: double.infinity,
                child: Card(
                  shadowColor: Colors.blue,
                  elevation: 10,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: Container(
              height: 420,
              width: double.infinity,
              child: Card(
                elevation: 0,
                color: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "LOGIN DETAILS",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff626865),
                          fontFamily: GoogleFonts.openSans().fontFamily),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding:
                              const EdgeInsets.only(left: 30.0, right: 30.0),
                          child: Text(
                            "Email",
                            style: TextStyle(
                                color: Color(0xff989B9A),
                                fontSize: 14,
                                fontFamily: GoogleFonts.openSans().fontFamily),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                              borderSide:
                                  BorderSide(width: 2, color: Colors.grey)),
                          fillColor: Colors.white.withOpacity(0.4),
                          filled: true,
                          hintStyle: TextStyle(
                              color: Color(0xff989B9A),
                              fontSize: 14,
                              fontFamily: GoogleFonts.openSans().fontFamily),
                          hintText: "${widget.mail}",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding:
                              const EdgeInsets.only(left: 30.0, right: 30.0),
                          child: Text(
                            "Password",
                            style: TextStyle(
                                color: Color(0xff989B9A),
                                fontSize: 14,
                                fontFamily: GoogleFonts.openSans().fontFamily),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                              borderSide:
                                  BorderSide(width: 2, color: Colors.grey)),
                          fillColor: Colors.white.withOpacity(0.4),
                          filled: true,
                          hintStyle: TextStyle(
                              color: Color(0xff989B9A),
                              fontSize: 14,
                              fontFamily: GoogleFonts.openSans().fontFamily),
                          hintText: "${widget.pass}",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0, right: 30.0),
                      child: Container(
                        height: 55,
                        width: double.infinity,
                        child: Card(
                          child: Center(
                            child: Text(
                              "THANK YOU",
                              style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.white,
                                  fontFamily:
                                      GoogleFonts.openSans().fontFamily),
                            ),
                          ),
                          shadowColor: Colors.black,
                          elevation: 8,
                          color: Color(0xff626167),
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 35.0, right: 30.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                              bottom: 1,
                            ),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                              color: Colors.black87,
                              width: 0.1,
                            ))),
                            child: Text(
                              "New Login Here",
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              "assets/ss-02.png",
              height: MediaQuery.of(context).size.height * 0.2,
            )),
      ],
    ));
  }
}
