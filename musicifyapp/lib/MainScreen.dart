import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  var image, title, subtitle;
  MainScreen(this.image, this.title, this.subtitle, {super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Image.asset(
                  "assets/3232-02.png",
                  fit: BoxFit.fitHeight,
                ),
              )),
          Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset("assets/23323-02.png")),

          //IMAGE
          Positioned(
            top: 160,
            left: 40,
            child: Container(
              height: 300,
              width: 300,
              child: Card(
                color: Color(0xff292727),
                elevation: 8,
                shadowColor: Colors.orange,
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Colors.orange),
                    borderRadius: BorderRadius.circular(20)),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  "${widget.image}",
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),

          //TITLE
          Padding(
            padding: const EdgeInsets.only(top: 500.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                "${widget.title}",
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontFamily: GoogleFonts.secularOne().fontFamily,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),

//SUBTITLE
          Padding(
            padding: const EdgeInsets.only(top: 560.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                "${widget.subtitle}",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[500],
                  fontFamily: GoogleFonts.secularOne().fontFamily,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                "NOW PLAYING",
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontFamily: GoogleFonts.secularOne().fontFamily,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 18.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
