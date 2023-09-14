import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_todoapp/util/CustomWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CustomWidget customWidget = CustomWidget();
  List<dynamic> activitylist = [];
  List<dynamic> labellist = [];
  List<dynamic> datelist = [];
  var day, year, month;
  var datecontroller = TextEditingController();
  var labelcontroller = TextEditingController();
  var activitycontroller = TextEditingController();
  var activitydata, labeldata, activitydata1, labeldata1, date;

  Future<void> selectedDate(BuildContext context) async {
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2025));
    if (dateTime != null) {
      setState(() {
        datecontroller.text =
            "${dateTime.year}-${dateTime.month}-${dateTime.day}";
        print(datecontroller.text);
      });
    }
  }

  late int editingIndex;

  void deleteTodo(BuildContext context, int index) {
    setState(() {
      activitylist.removeAt(index);
      labellist..removeAt(index);
      datelist..removeAt(index);
    });
  }

  void editTodo(BuildContext context, int index) {
    setState(() {
      editingIndex = index;
      activitycontroller.text = activitylist[index].toString();
      labelcontroller.text = labellist[index].toString();
      datecontroller.text = datelist[index].toString();
    });
    DialogBox1(
      context,
      "Edit Task",
      "ActivityName",
      "Enter Updated Activity name here",
      "Labels",
      "Enter Updated Labels here",
      "YYYY-MM-DD",
      () {
        if (activitydata1 == null) {
          activitylist
              .replaceRange(index, index + 1, [activitycontroller.text]);
        } else {
          activitylist.replaceRange(index, index + 1, [activitydata1]);
        }

        if (labeldata1 == null) {
          labellist.replaceRange(index, index + 1, [labelcontroller.text]);
        } else {
          labellist.replaceRange(index, index + 1, [labeldata1]);
        }
        if (datecontroller.text == null) {
          datelist
              .replaceRange(index, index + 1, [datecontroller.text.toString()]);
        } else {
          datelist
              .replaceRange(index, index + 1, [datecontroller.text.toString()]);
        }
        setState(() {});
        Navigator.of(context).pop(); // Close the dialog
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          customWidget.Aligment(
            Alignment.topLeft,
            customWidget.padding(
                EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                customWidget.Textwid("TODO APP", Colors.black87, 45,
                    FontWeight.normal, GoogleFonts.bebasNeue().fontFamily)),
          ),
          customWidget.padding(
            EdgeInsets.symmetric(horizontal: 20, vertical: 3),
            Row(
              children: [
                customWidget.Textwid("Activity Name", Colors.black87, 15,
                    FontWeight.bold, GoogleFonts.aleo().fontFamily),
                SizedBox(
                  width: 38,
                ),
                customWidget.Textwid("Labels", Colors.black87, 15,
                    FontWeight.bold, GoogleFonts.aleo().fontFamily),
                SizedBox(
                  width: 44,
                ),
                customWidget.Textwid("Due Date", Colors.black87, 15,
                    FontWeight.bold, GoogleFonts.aleo().fontFamily),
              ],
            ),
          ),
          customWidget.padding(
            EdgeInsets.symmetric(horizontal: 20),
            Container(
              color: Colors.black87,
              width: MediaQuery.of(context).size.width,
              height: 3,
            ),
          ),
          activitylist.isEmpty
              ? Container(
                  height: 700,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: Text(
                    "No Task Found",
                    style: TextStyle(fontSize: 20),
                  )),
                )
              : Expanded(
                  child: customWidget.padding(
                      EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                      customWidget.listTodo(activitylist, activitylist.length,
                          labellist, datelist, deleteTodo, editTodo))),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          activitycontroller.clear();
          labelcontroller.clear();
          datecontroller.clear();
          DialogBox(
              context,
              "Enter Your Task",
              "ActivityName",
              "Enter Activity name here",
              "Labels",
              "Enter Labels here",
              "YYYY-MM-DD", () {
            if (activitydata != null &&
                labeldata != null &&
                datecontroller.text != null) {
              activitylist.add(activitydata);
              labellist.add(labeldata);
              datelist.add(datecontroller.text);
              setState(() {});
            }
            Timer(Duration(seconds: 1), () {
              Navigator.of(context).pop();
            });
          });
        },
        backgroundColor: Colors.orange,
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }

  Future DialogBox(context, titletext, acttext, acthint, labtext, labhint,
      datehint, doneFunction) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: customWidget.Textwid(titletext, Colors.black, 22,
              FontWeight.bold, GoogleFonts.dmSans().fontFamily),
          content: Container(
            height: 180,
            child: Column(
              children: [
                TextField(
                  controller: activitycontroller,
                  onChanged: (value) {
                    activitydata = value;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: acttext,
                      hintText: acthint),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: labelcontroller,
                  onChanged: (value) {
                    labeldata = value;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: labtext,
                      hintText: labhint),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 180,
                      child: TextField(
                        controller: datecontroller,
                        enabled: false,
                        decoration: InputDecoration(
                            disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            hintText: datehint),
                      ),
                    ),
                    IconButton(
                        onPressed: () => selectedDate(context),
                        icon: Icon(
                          Icons.calendar_month,
                          color: Colors.black,
                          size: 25,
                        ))
                  ],
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
                onPressed: doneFunction,
                child: Text(
                  "Done",
                  style: TextStyle(color: Colors.orange[900], fontSize: 18),
                )),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Cancel",
                  style: TextStyle(color: Colors.grey[700], fontSize: 18),
                ))
          ],
        );
      },
    );
  }

  Future DialogBox1(context, titletext, acttext, acthint, labtext, labhint,
      datehint, doneFunction) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: customWidget.Textwid(titletext, Colors.black, 22,
              FontWeight.bold, GoogleFonts.dmSans().fontFamily),
          content: Container(
            height: 180,
            child: Column(
              children: [
                TextField(
                  controller: activitycontroller,
                  onChanged: (value) {
                    activitydata1 = value;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: acttext,
                      hintText: acthint),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: labelcontroller,
                  onChanged: (value) {
                    labeldata1 = value;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: labtext,
                      hintText: labhint),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 180,
                      child: TextField(
                        controller: datecontroller,
                        enabled: false,
                        decoration: InputDecoration(
                            disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            hintText: datehint),
                      ),
                    ),
                    IconButton(
                        onPressed: () => selectedDate(context),
                        icon: Icon(
                          Icons.calendar_month,
                          color: Colors.black,
                          size: 25,
                        ))
                  ],
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
                onPressed: doneFunction,
                child: Text(
                  "Done",
                  style: TextStyle(color: Colors.orange[900], fontSize: 18),
                )),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Cancel",
                  style: TextStyle(color: Colors.grey[700], fontSize: 18),
                ))
          ],
        );
      },
    );
  }
}
