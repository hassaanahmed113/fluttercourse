import 'dart:async';

import 'package:customwidget_datetime/util/CustomWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CustomWidget customWidget = CustomWidget();
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var phonecontroller = TextEditingController();
  var day, month, year;
  var hour, minute;
  var date, time;
  var istrue = false;
  var email, pass, phone, datdata, timdata;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "assets/gradient-grainy-texture-wallpaper-background.jpg"),
                fit: BoxFit.cover)),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              customWidget.Aligment(
                Alignment.topCenter,
                Text(
                  "EXAM REGISTRATION FORM",
                  style: TextStyle(
                      color: Colors.white,
                      shadows: [
                        Shadow(
                            // bottomLeft
                            offset: Offset(-0.5, -0.5),
                            color: Colors.white),
                        Shadow(
                            // bottomRight
                            offset: Offset(0.5, -0.5),
                            color: Colors.white),
                        Shadow(
                            // topRight
                            offset: Offset(0.5, 0.5),
                            color: Colors.white),
                        Shadow(
                            // topLeft
                            offset: Offset(-0.5, 0.5),
                            color: Colors.white),
                      ],
                      fontWeight: FontWeight.w900,
                      fontSize: 23,
                      fontFamily: GoogleFonts.montserrat().fontFamily),
                ),
              ),
              customWidget.padding(
                  10,
                  40,
                  customWidget.Aligment(
                      Alignment.center,
                      customWidget.Containerform(
                        context,
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          child: Column(
                            children: [
                              customWidget.Textwid("Email"),
                              customWidget.textfieldwid(
                                  "Enter your email here...",
                                  false,
                                  TextInputType.emailAddress,
                                  emailcontroller),
                              customWidget.Textwid("Password"),
                              customWidget.textfieldwid(
                                  "Enter your password here...",
                                  true,
                                  TextInputType.name,
                                  passwordcontroller),
                              customWidget.Textwid("Phone"),
                              customWidget.textfieldwid(
                                  "Enter your Phone here...",
                                  false,
                                  TextInputType.phone,
                                  phonecontroller),
                              customWidget.Textwid("Exam Date"),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  customWidget.textfielwiddate(
                                      "YYYY-MM-DD", date),
                                  customWidget.Iconbtn(() async {
                                    DateTime? dateTime = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(2000),
                                        lastDate: DateTime(2025));
                                    if (dateTime != null) {
                                      day = dateTime.day;
                                      month = dateTime.month;
                                      year = dateTime.year;
                                      date = "${year}-${month}-${day}";
                                      print("${year}-${month}-${day}");

                                      setState(() {});
                                    }
                                  },
                                      Icon(
                                        Icons.calendar_month,
                                        color: Colors.black,
                                        size: 37,
                                      ))
                                ],
                              ),
                              customWidget.Textwid("Exam Timing"),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  customWidget.textfielwiddate("HH:MM", time),
                                  customWidget.Iconbtn(() async {
                                    TimeOfDay? timepick = await showTimePicker(
                                        context: context,
                                        initialTime: TimeOfDay.now(),
                                        initialEntryMode:
                                            TimePickerEntryMode.dial);
                                    if (timepick != null) {
                                      time = "${hour}:${minute}";

                                      DateTime tempDate = DateFormat("hh:mm")
                                          .parse(timepick!.hour.toString() +
                                              ":" +
                                              timepick!.minute.toString());
                                      var dateFormat = DateFormat("h:mm a");
                                      print(dateFormat.format(tempDate));
                                      time = dateFormat.format(tempDate);
                                      setState(() {});
                                    }
                                  },
                                      Icon(
                                        Icons.timelapse,
                                        color: Colors.black,
                                        size: 37,
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              customWidget.Elevatedbtn(() {
                                setState(() {});
                                if (emailcontroller.text == null) {
                                  customWidget.dialogBox(
                                      context, "Enter is not entered....");
                                } else if (passwordcontroller.text == null) {
                                  customWidget.dialogBox(
                                      context, "Password is not entered....");
                                } else if (phonecontroller.text == null) {
                                  customWidget.dialogBox(context,
                                      "Phone number is not entered....");
                                } else if (phonecontroller.text == null ||
                                    passwordcontroller.text == null ||
                                    emailcontroller.text == null ||
                                    date == null ||
                                    time == null) {
                                  customWidget.dialogBox(
                                      context, "Some of fields are empty....");
                                } else {
                                  print(emailcontroller.text);
                                  print(passwordcontroller.text);
                                  print(phonecontroller.text);
                                  print(date);
                                  print(time);
                                  email = emailcontroller.text;
                                  pass = passwordcontroller.text;
                                  phone = phonecontroller.text;
                                  datdata = date;
                                  timdata = time;
                                  istrue = true;
                                  emailcontroller.clear();
                                  passwordcontroller.clear();
                                  phonecontroller.clear();

                                  date = null;
                                  time = null;
                                }
                              }, "Submit")
                            ],
                          ),
                        ),
                      ))),
              istrue
                  ? customWidget.containerAns(
                      context,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          customWidget.paddingonly(
                            5,
                            customWidget.Aligment(
                                Alignment.topCenter,
                                Text(
                                  "YOUR EXAM DATE REGISTERED",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                  ),
                                )),
                          ),
                          customWidget.paddingonly(
                            10,
                            customWidget.Aligment(
                              Alignment.topLeft,
                              Text(
                                " Email: ${email}\n Password: ${pass}\n Phone Number: ${phone}\n Exam Date: ${datdata}\n Exam Timing: ${timdata}\n",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          customWidget.Aligment(
                            Alignment.topRight,
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    istrue = false;
                                  });
                                  email == " ";
                                  phone == " ";
                                  pass == " ";
                                  date == null;
                                  time == null;
                                },
                                child: Text(
                                  "OK",
                                  style: TextStyle(
                                    color: Colors.pink[600],
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                          )
                        ],
                      ))
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
