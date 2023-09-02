import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Seeall.dart';

var accban = ['assets/accbanner.PNG'];

var accimg = [
  'assets/acc1.PNG',
  'assets/acc2.PNG',
  'assets/acc3.PNG',
  'assets/acc4.PNG',
  'assets/acc5.PNG',
  'assets/acc6.PNG',
  'assets/acc7.PNG',
  'assets/acc8.PNG',
  'assets/acc9.PNG',
  'assets/acc10.PNG'
];

var acctit = [
  'Classic Textured Bag',
  'Suede Texture Tote Bag',
  'Rimless Sunglasses',
  'Groovy Sunglasses',
  'Embellished Keychain',
  'Bow Pompom Keychain',
  'Sequined Heart Keychain',
  'Ring Logo Belt',
  'Classic Wide Belt',
  'Buckles Reversible Belt'
];

var accpric = [
  '\$ 18.00',
  '\$ 19.00',
  '\$ 12.00',
  '\$ 16.00',
  '\$ 19.00',
  '\$ 10.00',
  '\$ 11.00',
  '\$ 20.00',
  '\$ 18.00',
  '\$ 15.00'
];

class Accessories extends StatefulWidget {
  const Accessories({super.key});

  @override
  State<Accessories> createState() => _AccessoriesState();
}

class _AccessoriesState extends State<Accessories> {
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
                  "${accban[0]}",
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
                              320,
                              'Accessories',
                              accimg.toList(),
                              acctit.toList(),
                              accpric.toList()),
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
                    height: 250,
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
                                    "${accimg[index]}",
                                    fit: BoxFit.fitHeight,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "${acctit[index]}",
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
                                        "${accpric[index]}",
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
                      itemCount: accimg.length - 5,
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
                  "assets/banner2acc.jpg",
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
