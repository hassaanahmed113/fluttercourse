import 'package:date_picker_time_picker/utils/customwidget.dart';
import 'package:date_picker_time_picker/utils/customwidget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var day, year, month, hour, minute;
  var timeadd = [];
  customwidget customwidget1 = customwidget();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Align(alignment: Alignment.topLeft, child: Text("DATE")),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              enabled: false,
              decoration: InputDecoration(
                hintText: year == null || month == null || day == null
                    ? " "
                    : "${year}/${month}/${day}",
                hintStyle: TextStyle(color: Colors.black, fontSize: 22),
                filled: true,
                fillColor: Colors.amber,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.pink, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.indigo, width: 2)),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: IconButton(
                  onPressed: () async {
                    DateTime? dateTime = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2024));

                    if (dateTime != null) {
                      day = dateTime.day;
                      year = dateTime.year;
                      month = dateTime.month;

                      setState(() {});
                    }
                  },
                  icon: Icon(Icons.calendar_month)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Align(alignment: Alignment.topLeft, child: Text("TIME")),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              enabled: false,
              decoration: InputDecoration(
                hintText:
                    hour == null || minute == null ? " " : "${hour}:${minute}",
                hintStyle: TextStyle(color: Colors.black, fontSize: 22),
                filled: true,
                fillColor: Colors.amber,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.pink, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.indigo, width: 2)),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: IconButton(
                  onPressed: () async {
                    TimeOfDay? timepicker = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                        initialEntryMode: TimePickerEntryMode.dial);

                    if (timepicker != null) {
                      hour = timepicker.hour;
                      minute = timepicker.minute;
                      timeadd.add("${hour}:${minute}");
                      print(timeadd);
                      setState(() {});
                    }
                  },
                  icon: Icon(Icons.timelapse)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Align(
                alignment: Alignment.topLeft, child: Text("ALARM TIMING")),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: customwidget1.Listviewbuilder(timeadd, timeadd.length)),
          ),
        ],
      ),
    );
  }
}
