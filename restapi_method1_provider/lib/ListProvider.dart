import 'package:flutter/material.dart';

class ListProvider extends ChangeNotifier {
  var imgeList = [];
  var titleList = [];
  var brandList = [];
  var priceList = [];

  void add(img, title, brand, price) {
    imgeList.add(img);
    titleList.add(title);
    brandList.add(brand);
    priceList.add(price);
    notifyListeners();
  }

  void remove(index) {
    imgeList.removeAt(index);
    titleList.removeAt(index);
    brandList.removeAt(index);
    priceList.removeAt(index);
    notifyListeners();
  }
}
