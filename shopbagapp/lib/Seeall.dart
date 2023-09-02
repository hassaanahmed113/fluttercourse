import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Seeall extends StatefulWidget {
  var category;
  var accimg = [];

  var acctit = [];

  var accpric = [];
  var height;

  Seeall(this.height, this.category, this.accimg, this.acctit, this.accpric,
      {super.key});

  @override
  State<Seeall> createState() => _SeeallState();
}

class _SeeallState extends State<Seeall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 13.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back)),
                    Text(
                      "${widget.category}",
                      style: TextStyle(
                          fontFamily: GoogleFonts.roboto().fontFamily,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: widget.height, crossAxisCount: 2),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Container(
                    child: Card(
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "${widget.accimg[index]}",
                            fit: BoxFit.fitHeight,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "${widget.acctit[index]}",
                                style: TextStyle(
                                    fontFamily: GoogleFonts.roboto().fontFamily,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "${widget.accpric[index]}",
                                style: TextStyle(
                                    fontFamily: GoogleFonts.roboto().fontFamily,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[600]),
                              ),
                            ),
                          ),
                        ],
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                );
              },
              itemCount: widget.accimg.length,
            ),
          ],
        ),
      ),
    );
  }
}
