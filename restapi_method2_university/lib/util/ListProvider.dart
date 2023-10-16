import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class ListProvider extends ChangeNotifier {
  late List listresponse;
  bool isval = true;
  getAPI() async {
    var response = await http.get(Uri.parse(
        'http://universities.hipolabs.com/search?country=United+Kingdom'));
    if (response.statusCode == 200) {
      var rawdata = jsonDecode(response.body);
      listresponse = rawdata;

      isval = false;
      notifyListeners();
    }
  }
}
