import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class ListProvider extends ChangeNotifier {
  late List listresponse;
  bool isbutton = true;
  getapiName() async {
    var response = await http
        .get(Uri.parse('https://api4.binance.com/api/v3/ticker/24hr'));

    if (response.statusCode == 200) {
      var rawdata = jsonDecode(response.body);

      listresponse = rawdata;
      isbutton = false;

      notifyListeners();
    }
  }

  late int indexStored;
  indexstore(index) {
    indexStored = index;
    notifyListeners();
  }

  bool isvalue = false;
  ValueChanged(index) {
    var value = listresponse[index]['priceChange'].toString();
    if (value.startsWith('-')) {
      isvalue = true;
      notifyListeners();
    } else {
      isvalue = false;
      notifyListeners();
    }
    notifyListeners();
  }
}
