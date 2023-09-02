import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Seeall.dart';

var bban = ['assets/makbanner.PNG'];

var bimg = [
  'assets/mak1.PNG',
  'assets/mak2.PNG',
  'assets/mak3.PNG',
  'assets/mak4.PNG',
  'assets/mak5.PNG',
  'assets/mak6.PNG',
  'assets/mak7.PNG',
];

var btit = [
  'Kryolan-TV Paint Stick',
  'ST London-Dual ',
  'ST London-Colorist',
  'ST London-Imperfection',
  'ST London-Colorist',
  'ST London-Sparkling',
  'ST London-Makeup',
  'ST London-BB',
  'Kryolan-Dry Cake',
  'ST London-Eyematic'
];

var bpric = [
  '\$ 33.00',
  '\$ 39.00',
  '\$ 23.00',
  '\$ 36.00',
  '\$ 19.00',
  '\$ 10.00',
  '\$ 11.00',
  '\$ 20.00',
  '\$ 18.00',
  '\$ 15.00'
];

class Beauty extends StatefulWidget {
  const Beauty({super.key});

  @override
  State<Beauty> createState() => _BeautyState();
}

class _BeautyState extends State<Beauty> {
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
                  "${bban[0]}",
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
                          builder: (context) => Seeall(230, 'Beauty',
                              bimg.toList(), btit.toList(), bpric.toList()),
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
                    height: 210,
                    width: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            height: 120,
                            width: 150,
                            child: Card(
                              color: Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "${bimg[index]}",
                                    fit: BoxFit.fitHeight,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "${btit[index]}",
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
                                        "${bpric[index]}",
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
                      itemCount: bimg.length - 2,
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
                  "assets/banner2b.jpg",
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
