import 'package:flutter/material.dart';

class CustomWidget {
  Widget textCus(data, font, fontw) {
    return Text(
      data,
      style: TextStyle(fontSize: font, fontWeight: fontw, color: Colors.black),
    );
  }
}
