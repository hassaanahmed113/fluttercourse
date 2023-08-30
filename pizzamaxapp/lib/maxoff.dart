import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizzamaxapp/SecondScreen.dart';

var pdeal = [
  'assets/max1.PNG',
  'assets/max2.PNG',
  'assets/max3.PNG',
  'assets/max4.PNG'
];
var ptitle = [
  '50% OFF P.Pan Pizza',
  '50% OFF Medium 10',
  '50% OFF Large 13',
  '50% OFF Party Size 16'
];
var pprice = ['395.00', '745.00', '1,145.00', '1,495.00'];

class maxoff extends StatefulWidget {
  const maxoff({super.key});

  @override
  State<maxoff> createState() => _maxoffState();
}

class _maxoffState extends State<maxoff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: GridView.builder(
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: 380),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondScreen(
                            pdeal.elementAt(index),
                            ptitle.elementAt(index),
                            pprice.elementAt(index))));
              },
              child: Card(
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          height: 500,
                          child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Image.asset(
                                "${pdeal[index]}",
                                fit: BoxFit.fitHeight,
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
                            "${ptitle[index]}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: Card(
                            color: Colors.grey[400],
                            shape: CircleBorder(),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Container(
                                  height: 20,
                                  width: 20,
                                  child: Image.asset("assets/heart.png")),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Card(
                          color: Colors.black,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 19.0, right: 19.0, top: 3.0, bottom: 3.0),
                            child: Text(
                              "Rs. ${pprice[index]}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 19,
                                    child: Image.asset(
                                      "assets/bag.png",
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    " ADD TO CART",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        fontFamily:
                                            GoogleFonts.roboto().fontFamily),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          );
        },
        itemCount: pdeal.length,
      ),
    );
  }
}
