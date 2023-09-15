import 'package:flutter/material.dart';

class CustomWidget {
  Widget textWid(data, colors, fontsize, fontweight, fontfamily) {
    return Text(
      data,
      style: TextStyle(
          color: colors,
          fontSize: fontsize,
          fontWeight: fontweight,
          fontFamily: fontfamily),
    );
  }

  Widget paddingWid(padding, child) {
    return Padding(padding: padding, child: child);
  }

  Widget aligmentWid(aligment, child) {
    return Align(
      alignment: aligment,
      child: child,
    );
  }

  Widget textfieldWid(controller, hinttext) {
    return TextField(
      controller: controller,
      style: TextStyle(fontSize: 17, color: Colors.black),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: hinttext,
        labelStyle: TextStyle(color: Colors.black, fontSize: 17),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            borderSide: BorderSide(width: 2, color: Colors.green)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            borderSide: BorderSide(width: 2, color: Colors.red)),
      ),
    );
  }

  Widget box(height) {
    return SizedBox(
      height: height,
    );
  }

  Widget button(onpressed, color, text) {
    return ElevatedButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: onpressed,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
