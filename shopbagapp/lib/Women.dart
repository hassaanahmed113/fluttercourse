import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopbagapp/Seeall.dart';

var womenban = ['assets/bannerwomen.jpg'];

var womenimg = [
  'assets/women1.PNG',
  'assets/women2.PNG',
  'assets/women3.PNG',
  'assets/women4.PNG',
  'assets/women5.PNG',
  'assets/women6.PNG',
  'assets/women7.PNG',
  'assets/women8.PNG',
  'assets/women9.PNG',
  'assets/women10.PNG'
];

var womentit = [
  'Contemporary Kameez',
  'Classic Kameez',
  'Drop Shoulder',
  'Flared Kameez',
  'Classic Kameez',
  'Contemporary Kurta',
  'Drop Shoulder',
  'Flared Kameez',
  'Contemporary Kurta',
  'Classic Kameez'
];

var womenpric = [
  '\$ 22.00',
  '\$ 27.00',
  '\$ 26.00',
  '\$ 28.00',
  '\$ 19.00',
  '\$ 10.00',
  '\$ 11.00',
  '\$ 20.00',
  '\$ 18.00',
  '\$ 15.00'
];

class Women extends StatefulWidget {
  const Women({super.key});

  @override
  State<Women> createState() => _WomenState();
}

class _WomenState extends State<Women> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10.0, top: 7.0, bottom: 3.0),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  "${womenban[0]}",
                  fit: BoxFit.fitHeight,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10.0, top: 3.0, bottom: 3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Feature Products",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Seeall(
                              310,
                              'Women',
                              womenimg.toList(),
                              womentit.toList(),
                              womenpric.toList()),
                        ));
                  },
                  child: Text(
                    "Show All",
                    style: TextStyle(
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[400]),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10.0, top: 2.0, bottom: 2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 280,
                    width: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            height: 100,
                            width: 150,
                            child: Card(
                              color: Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "${womenimg[index]}",
                                    fit: BoxFit.fitWidth,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "${womentit[index]}",
                                        style: TextStyle(
                                            fontFamily:
                                                GoogleFonts.roboto().fontFamily,
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
                                        "${womenpric[index]}",
                                        style: TextStyle(
                                            fontFamily:
                                                GoogleFonts.roboto().fontFamily,
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
                      itemCount: womenimg.length - 5,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10.0, top: 7.0, bottom: 3.0),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  "assets/banner2women.jpg",
                  fit: BoxFit.fitHeight,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
