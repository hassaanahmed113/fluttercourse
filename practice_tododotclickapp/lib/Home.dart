import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:practice_tododotclickapp/Utils/CustomWidgets.dart';
import 'package:practice_tododotclickapp/Utils/SharedPref.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<String> task = [];
List<String> date = [];
List<String> time = [];

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CustomWidget cus = CustomWidget();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SharedPref().getTaskList().then((taskone) {
      if (taskone.isNotEmpty) {
        setState(() {
          task = taskone;
        });
      } else {
        task = [];
      }
    });
    SharedPref().getDateList().then((dateone) {
      if (dateone.isNotEmpty) {
        setState(() {
          date = dateone;
        });
      } else {
        date = [];
      }
    });
    SharedPref().getTimeList().then((timeone) {
      if (timeone.isNotEmpty) {
        setState(() {
          time = timeone;
        });
      } else {
        time = [];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView.builder(
        itemCount: task.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onHorizontalDragEnd: (details) async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              setState(() {
                task.removeAt(index);
                date.removeAt(index);
                time.removeAt(index);

                prefs.setStringList(
                    'task', task.map((e) => e.toString()).toList());
                prefs.setStringList(
                    'time', time.map((e) => e.toString()).toList());
                prefs.setStringList(
                    'date', date.map((e) => e.toString()).toList());
              });
            },
            child: Card(
              child: Row(
                children: [
                  Text(task[index]),
                  SizedBox(
                    width: 10,
                  ),
                  Text(date[index]),
                  SizedBox(
                    width: 10,
                  ),
                  Text(time[index]),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      updateButton(context, index);
                    },
                    child: Container(
                      height: 30,
                      width: 39,
                      child: Icon(
                        Icons.edit,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          floatingButton(context);
        },
        hoverColor: Colors.indigo,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    ));
  }

  String day = '';
  String month = '';
  String year = '';
  String hour = '';
  String minute = '';
  String seconds = '';

  TextEditingController datecontroller = TextEditingController();
  TextEditingController timecontroller = TextEditingController();
  TextEditingController taskcontroller = TextEditingController();
  void floatingButton(context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: cus.textCus("Enter Your Task", 26, FontWeight.bold),
          content: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  enabled: true,
                  controller: taskcontroller,
                  decoration: InputDecoration(
                    hintText: "Enter task",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: BorderSide(color: Colors.indigo, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: BorderSide(color: Colors.orange, width: 2)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 180,
                      child: TextField(
                        enabled: false,
                        controller: datecontroller,
                        decoration: InputDecoration(
                          hintText: "Your Date",
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide:
                                  BorderSide(color: Colors.indigo, width: 2)),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        DateTime? datetime = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2024));
                        if (datetime != null) {
                          setState(() {
                            day = datetime.day.toString();
                            month = datetime.month.toString();
                            year = datetime.year.toString();
                            datecontroller.text = "$day-${month}-${year}";
                            print(datecontroller);
                          });
                        }
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        child: Icon(
                          Icons.date_range_outlined,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 180,
                      child: TextField(
                        enabled: false,
                        controller: timecontroller,
                        decoration: InputDecoration(
                          hintText: "Your Time",
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide:
                                  BorderSide(color: Colors.indigo, width: 2)),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        TimeOfDay? time = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                            initialEntryMode: TimePickerEntryMode.dial);
                        if (time != null) {
                          setState(() {
                            minute = time.minute.toString();
                            hour = time.hour.toString();
                            timecontroller.text =
                                time.format(context).toString();
                          });
                        }
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        child: Icon(
                          Icons.timelapse,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  taskcontroller.clear();
                  datecontroller.clear();
                  timecontroller.clear();
                  setState(() {});
                },
                child: cus.textCus("Cancel", 17, FontWeight.normal)),
            TextButton(
                onPressed: () async {
                  SharedPreferences pref =
                      await SharedPreferences.getInstance();
                  if (taskcontroller.text.isNotEmpty &&
                      datecontroller.text.isNotEmpty &&
                      timecontroller.text.isNotEmpty) {
                    setState(() {
                      task.add(taskcontroller.text.toString());
                      date.add(datecontroller.text.toString());
                      time.add(timecontroller.text.toString());
                      print(task);
                      print(date);
                      pref.setStringList(
                          'task', task.map((e) => e.toString()).toList());
                      pref.setStringList(
                          'date', date.map((e) => e.toString()).toList());
                      pref.setStringList(
                          'time', time.map((e) => e.toString()).toList());

                      taskcontroller.clear();
                      datecontroller.clear();
                      timecontroller.clear();
                    });
                  }
                  // ignore: use_build_context_synchronously
                  Navigator.of(context).pop();
                },
                child: cus.textCus("Done", 17, FontWeight.normal))
          ],
        );
      },
    );
  }

  void updateButton(context, index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: cus.textCus("Update Your Task", 26, FontWeight.bold),
          content: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  enabled: true,
                  controller: taskcontroller,
                  decoration: InputDecoration(
                    hintText: task[index],
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: BorderSide(color: Colors.indigo, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: BorderSide(color: Colors.orange, width: 2)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 180,
                      child: TextField(
                        enabled: false,
                        controller: datecontroller,
                        decoration: InputDecoration(
                          hintText: date[index],
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide:
                                  BorderSide(color: Colors.indigo, width: 2)),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        DateTime? datetime = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2024));
                        if (datetime != null) {
                          setState(() {
                            day = datetime.day.toString();
                            month = datetime.month.toString();
                            year = datetime.year.toString();
                            datecontroller.text = "$day-${month}-${year}";
                            print(datecontroller);
                          });
                        }
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        child: Icon(
                          Icons.date_range_outlined,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 180,
                      child: TextField(
                        enabled: false,
                        controller: timecontroller,
                        decoration: InputDecoration(
                          hintText: time[index],
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide:
                                  BorderSide(color: Colors.indigo, width: 2)),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        TimeOfDay? time = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                            initialEntryMode: TimePickerEntryMode.dial);
                        if (time != null) {
                          setState(() {
                            minute = time.minute.toString();
                            hour = time.hour.toString();
                            timecontroller.text =
                                time.format(context).toString();
                          });
                        }
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        child: Icon(
                          Icons.timelapse,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  taskcontroller.clear();
                  datecontroller.clear();
                  timecontroller.clear();
                  setState(() {});
                },
                child: cus.textCus("Cancel", 17, FontWeight.normal)),
            TextButton(
                onPressed: () async {
                  SharedPreferences pref =
                      await SharedPreferences.getInstance();
                  if (taskcontroller.text.isNotEmpty &&
                      datecontroller.text.isNotEmpty &&
                      timecontroller.text.isNotEmpty) {
                    setState(() {
                      task.removeAt(index);
                      date.removeAt(index);
                      time.removeAt(index);
                      task.insert(index, taskcontroller.text.toString());
                      date.insert(index, datecontroller.text.toString());
                      time.insert(index, timecontroller.text.toString());
                      print(task);
                      print(date);
                      pref.setStringList(
                          'task', task.map((e) => e.toString()).toList());
                      pref.setStringList(
                          'date', date.map((e) => e.toString()).toList());
                      pref.setStringList(
                          'time', time.map((e) => e.toString()).toList());

                      taskcontroller.clear();
                      datecontroller.clear();
                      timecontroller.clear();
                    });
                  }
                  // ignore: use_build_context_synchronously
                  Navigator.of(context).pop();
                },
                child: cus.textCus("Done", 17, FontWeight.normal))
          ],
        );
      },
    );
  }
}
