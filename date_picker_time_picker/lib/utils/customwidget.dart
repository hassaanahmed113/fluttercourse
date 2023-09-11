import 'package:flutter/material.dart';

class customwidget {
  Widget Listviewbuilder(var item, length) {
    return Container(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Text("${item[index]}");
        },
        itemCount: length,
      ),
    );
  }
}
