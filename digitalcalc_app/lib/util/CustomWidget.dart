import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomWidget {
  var textcontroller = TextEditingController();
  Widget textWid(data, colors, double fontsize, fontweight, fontfamily) {
    return Text(
      data,
      style: TextStyle(
          color: colors,
          fontSize: fontsize,
          fontWeight: fontweight,
          fontFamily: fontfamily),
    );
  }

  Widget paddingWid(padding, child) {
    return Padding(
      padding: padding,
      child: child,
    );
  }

  Widget alignmentWid(alignment, child) {
    return Align(
      alignment: alignment,
      child: child,
    );
  }

  Widget containerWid(double height, double width, bordervalue, colorbox, data,
      colorstext, double fontsizetext, fontweighttext, fontfamilytext) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: colorbox,
        borderRadius: bordervalue,
      ),
      child: Center(
        child: textWid(
            data, colorstext, fontsizetext, fontweighttext, fontfamilytext),
      ),
    );
  }

  Widget containerWid1(
      double height, double width, bordervalue, colorbox, image) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.fitWidth),
        color: colorbox,
        borderRadius: bordervalue,
      ),
    );
  }

  Widget fieldtextWid() {
    return TextField(
      textAlign: TextAlign.start,
      enabled: false,
      controller: textcontroller,
      style: TextStyle(
          color: Color(0xff10B7FF),
          fontSize: 24,
          fontWeight: FontWeight.bold,
          fontFamily: GoogleFonts.roboto().fontFamily),
      decoration: InputDecoration(
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Colors.grey, width: 2))),
    );
  }

  Widget boxheight(double height) {
    return SizedBox(
      height: height,
    );
  }

  Widget boxwidth(double width) {
    return SizedBox(
      width: width,
    );
  }

  Widget inkwellWid(ontap, child) {
    return InkWell(
      onTap: ontap,
      child: child,
    );
  }

  Widget listResult(calc, resultcalc, length) {
    return Container(
      height: 140,
      child: ListView.builder(
        reverse: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              child: Column(
                children: [
                  alignmentWid(
                    Alignment.topLeft,
                    textWid("= ${calc[index]}", Colors.grey[500], 19,
                        FontWeight.bold, GoogleFonts.roboto().fontFamily),
                  ),
                  boxheight(5),
                  alignmentWid(
                    Alignment.topLeft,
                    textWid(" ${resultcalc[index]}", Colors.grey[400], 22,
                        FontWeight.bold, GoogleFonts.roboto().fontFamily),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: length,
      ),
    );
  }

  Widget gridData(
      ontapc,
      ontapsq,
      ontapdiv,
      ontapmul,
      ontap7,
      ontap8,
      ontap9,
      ontapminus,
      ontap4,
      ontap5,
      ontap6,
      ontapadd,
      ontap1,
      ontap2,
      ontap3,
      ontapfunctionx,
      ontap0,
      ontapdot,
      ontapfunctionsqrt,
      ontapfunction) {
    return Expanded(
      child: GridView.count(
        padding: EdgeInsets.only(bottom: 20),
        mainAxisSpacing: 15,
        crossAxisSpacing: 10,
        crossAxisCount: 4,
        children: [
          inkwellWid(
            ontapc,
            containerWid(
                90,
                83,
                BorderRadius.all(Radius.circular(20)),
                Color(0xff363035),
                "C",
                Color(0xffA5A5A5),
                28,
                FontWeight.bold,
                GoogleFonts.roboto().fontFamily),
          ),
          inkwellWid(
            ontapsq,
            containerWid(
                90,
                83,
                BorderRadius.all(Radius.circular(20)),
                Color(0xff740076),
                "x²",
                Colors.white,
                30,
                FontWeight.bold,
                GoogleFonts.roboto().fontFamily),
          ),
          inkwellWid(
            ontapdiv,
            containerWid(
                90,
                83,
                BorderRadius.all(Radius.circular(20)),
                Color(0xff740076),
                "÷",
                Colors.white,
                30,
                FontWeight.bold,
                GoogleFonts.roboto().fontFamily),
          ),
          inkwellWid(
            ontapmul,
            containerWid(
                90,
                83,
                BorderRadius.all(Radius.circular(20)),
                Color(0xff740076),
                "×",
                Colors.white,
                30,
                FontWeight.bold,
                GoogleFonts.roboto().fontFamily),
          ),
          inkwellWid(
            ontap7,
            containerWid(
                90,
                83,
                BorderRadius.all(Radius.circular(20)),
                Color(0xff363035),
                "7",
                Color(0xff10B7FF),
                28,
                FontWeight.bold,
                GoogleFonts.roboto().fontFamily),
          ),
          inkwellWid(
            ontap8,
            containerWid(
                90,
                83,
                BorderRadius.all(Radius.circular(20)),
                Color(0xff363035),
                "8",
                Color(0xff10B7FF),
                30,
                FontWeight.bold,
                GoogleFonts.roboto().fontFamily),
          ),
          inkwellWid(
            ontap9,
            containerWid(
                90,
                83,
                BorderRadius.all(Radius.circular(20)),
                Color(0xff363035),
                "9",
                Color(0xff10B7FF),
                30,
                FontWeight.bold,
                GoogleFonts.roboto().fontFamily),
          ),
          inkwellWid(
            ontapminus,
            containerWid(
                90,
                83,
                BorderRadius.all(Radius.circular(20)),
                Color(0xff740076),
                "-",
                Colors.white,
                35,
                FontWeight.bold,
                GoogleFonts.roboto().fontFamily),
          ),
          inkwellWid(
            ontap4,
            containerWid(
                90,
                83,
                BorderRadius.all(Radius.circular(20)),
                Color(0xff363035),
                "4",
                Color(0xff10B7FF),
                28,
                FontWeight.bold,
                GoogleFonts.roboto().fontFamily),
          ),
          inkwellWid(
            ontap5,
            containerWid(
                90,
                83,
                BorderRadius.all(Radius.circular(20)),
                Color(0xff363035),
                "5",
                Color(0xff10B7FF),
                30,
                FontWeight.bold,
                GoogleFonts.roboto().fontFamily),
          ),
          inkwellWid(
            ontap6,
            containerWid(
                90,
                83,
                BorderRadius.all(Radius.circular(20)),
                Color(0xff363035),
                "6",
                Color(0xff10B7FF),
                30,
                FontWeight.bold,
                GoogleFonts.roboto().fontFamily),
          ),
          inkwellWid(
            ontapadd,
            containerWid(
                90,
                83,
                BorderRadius.all(Radius.circular(20)),
                Color(0xff740076),
                "+",
                Colors.white,
                30,
                FontWeight.bold,
                GoogleFonts.roboto().fontFamily),
          ),
          inkwellWid(
            ontap1,
            containerWid(
                90,
                83,
                BorderRadius.all(Radius.circular(20)),
                Color(0xff363035),
                "1",
                Color(0xff10B7FF),
                28,
                FontWeight.bold,
                GoogleFonts.roboto().fontFamily),
          ),
          inkwellWid(
            ontap2,
            containerWid(
                90,
                83,
                BorderRadius.all(Radius.circular(20)),
                Color(0xff363035),
                "2",
                Color(0xff10B7FF),
                30,
                FontWeight.bold,
                GoogleFonts.roboto().fontFamily),
          ),
          inkwellWid(
            ontap3,
            containerWid(
                90,
                83,
                BorderRadius.all(Radius.circular(20)),
                Color(0xff363035),
                "3",
                Color(0xff10B7FF),
                30,
                FontWeight.bold,
                GoogleFonts.roboto().fontFamily),
          ),
          inkwellWid(
            ontapfunctionx,
            containerWid(
                90,
                83,
                BorderRadius.all(Radius.circular(20)),
                Color(0xff740076),
                "x!",
                Colors.white,
                30,
                FontWeight.bold,
                GoogleFonts.roboto().fontFamily),
          ),
          inkwellWid(
            ontap0,
            containerWid(
                60,
                182,
                BorderRadius.all(Radius.circular(20)),
                Color(0xff363035),
                "0",
                Color(0xff10B7FF),
                28,
                FontWeight.bold,
                GoogleFonts.roboto().fontFamily),
          ),
          inkwellWid(
            ontapdot,
            containerWid(
                60,
                83,
                BorderRadius.all(Radius.circular(20)),
                Color(0xff363035),
                ".",
                Color(0xff10B7FF),
                35,
                FontWeight.bold,
                GoogleFonts.roboto().fontFamily),
          ),
          inkwellWid(
            ontapfunctionsqrt,
            containerWid(
                60,
                83,
                BorderRadius.all(Radius.circular(20)),
                Color(0xff363035),
                "√x",
                Color(0xff10B7FF),
                30,
                FontWeight.bold,
                GoogleFonts.roboto().fontFamily),
          ),
          inkwellWid(
            ontapfunction,
            containerWid(
                60,
                83,
                BorderRadius.all(Radius.circular(20)),
                Color(0xff740076),
                "=",
                Colors.white,
                30,
                FontWeight.bold,
                GoogleFonts.roboto().fontFamily),
          ),
        ],
      ),
    );
  }
}
