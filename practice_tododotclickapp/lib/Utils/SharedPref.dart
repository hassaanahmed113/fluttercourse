import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  Future<List<String>> getTaskList() async {
    final prefs = await SharedPreferences.getInstance();
    final taskList = prefs.getStringList('task') ?? [];
    return taskList;
  }

  Future<List<String>> getTimeList() async {
    final prefs = await SharedPreferences.getInstance();
    final timeList = prefs.getStringList('time') ?? [];
    return timeList;
  }

  Future<List<String>> getDateList() async {
    final prefs = await SharedPreferences.getInstance();
    final dateList = prefs.getStringList('date') ?? [];
    return dateList;
  }
}
