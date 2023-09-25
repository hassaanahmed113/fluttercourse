import 'package:flutter/material.dart';

class Cus {
  Widget cb(image) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 56, maxWidth: 56),
      child: SizedBox.expand(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(image),
          ),
        ),
      ),
    );
  }

  Widget cb1(image, double width, double padding) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 35, maxWidth: width),
      child: SizedBox.expand(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(padding),
            child: Image.asset(image),
          ),
        ),
      ),
    );
  }
}
