import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListProvider extends ChangeNotifier {
  List<String> image = [];
  List<String> title = [];
  List<double> price = [];
  double subtotal1 = 0.0;
  double totalval = 0.0;

  addMethod(image1, title1,double price1, index) {
    image.add(image1);
    title.add(title1);
    price.add(price1);
    subtotal(index);
    total();
    notifyListeners();
  }

  deleteMethod(index) {
    subtotalminus(index);
    total();
    image.removeAt(index);
    title.removeAt(index);
    price.removeAt(index);
    notifyListeners();
  }

  subtotal(index) {
    if (index >= 0 && index < price.length) {
      subtotal1 += price[index];
      notifyListeners();
    } else {
      print("Invalid index: $index");
    }
  }

  subtotalminus(index) {
    subtotal1 -= price[index];

    notifyListeners();
  }

  total() {
    totalval = subtotal1;
    totalval += 50;
    notifyListeners();
  }
}
