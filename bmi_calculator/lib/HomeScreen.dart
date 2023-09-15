import 'package:bmi_calculator/util/CustomWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CustomWidget customWidget = CustomWidget();
  var hfeet = TextEditingController();
  var hinch = TextEditingController();
  var wkg = TextEditingController();
  var result = "";
  var msg = "";
  var bmiresult = "";
  num bmiresult1 = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "assets/artistic-blurry-colorful-wallpaper-background.jpg"),
                fit: BoxFit.cover)),
        child: customWidget.paddingWid(
          EdgeInsets.symmetric(horizontal: 20),
          Column(
            children: [
              customWidget.box(50),
              customWidget.textWid("BMI CALCULATOR", Colors.white, 40,
                  FontWeight.normal, GoogleFonts.anton().fontFamily),
              customWidget.box(30),
              customWidget.aligmentWid(
                Alignment.topLeft,
                customWidget.textWid("Height (Feet):", Colors.white, 22,
                    FontWeight.normal, GoogleFonts.dmSans().fontFamily),
              ),
              customWidget.box(10),
              customWidget.textfieldWid(
                  hfeet, "Enter your height in feet here.."),
              customWidget.box(40),
              customWidget.aligmentWid(
                Alignment.topLeft,
                customWidget.textWid("Height (Inches):", Colors.white, 22,
                    FontWeight.normal, GoogleFonts.dmSans().fontFamily),
              ),
              customWidget.box(10),
              customWidget.textfieldWid(
                hinch,
                "Enter your height in inches here..",
              ),
              customWidget.box(40),
              customWidget.aligmentWid(
                Alignment.topLeft,
                customWidget.textWid("Weight (Kg):", Colors.white, 22,
                    FontWeight.normal, GoogleFonts.dmSans().fontFamily),
              ),
              customWidget.box(10),
              customWidget.textfieldWid(
                wkg,
                "Enter your weight in kg here..",
              ),
              customWidget.box(30),
              customWidget.button(() {
                num hf = int.parse(hfeet.text);
                num hi = int.parse(hinch.text);
                num wk = int.parse(wkg.text);

                num totalinches = (hf * 12) + hi;
                num totalcent = totalinches * 2.54;
                num meter = totalcent / 100;

                num bmi = wk / (meter * meter);

                bmiresult1 = bmi;

                if (bmi < 18) {
                  msg = "You are Under Weight";
                } else if (bmi >= 18.1 && bmi <= 24.9) {
                  msg = "You have Healthy Weight";
                } else {
                  msg = "You are Over Weight";
                }
                result = "${msg}";
                bmiresult = "bmi: ${bmi.toStringAsFixed(2)}";
                setState(() {});
              }, Colors.red[800], "Show Result"),
              customWidget.box(10),
              customWidget.textWid(
                  result.isEmpty ? "No Result Found" : result,
                  Colors.white,
                  result.isEmpty ? 20 : 23,
                  FontWeight.normal,
                  GoogleFonts.dmSans().fontFamily),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: customWidget.textWid(
                      bmiresult.isEmpty ? "" : bmiresult,
                      bmiresult1 < 18
                          ? Colors.yellow
                          : bmiresult1 >= 18.1 && bmiresult1 <= 24.9
                              ? Color.fromARGB(255, 96, 255, 101)
                              : Color.fromARGB(255, 244, 168, 54),
                      23,
                      FontWeight.bold,
                      GoogleFonts.dmSans().fontFamily),
                ),
              ),
              customWidget.box(20),
              customWidget.button(() {
                bmiresult = "";
                bmiresult1 = 0.0;
                result = "";
                setState(() {});
              }, Colors.green[600], "Clear")
            ],
          ),
        ),
      ),
    );
  }
}
