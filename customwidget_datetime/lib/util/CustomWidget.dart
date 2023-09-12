import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomWidget {
  Widget paddingonly(top, child) {
    return Padding(child: child, padding: EdgeInsets.only(top: top));
  }

  Widget padding(horizontal, vertical, child) {
    return Padding(
        child: child,
        padding:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical));
  }

  Widget Aligment(align, child) {
    return Align(
      alignment: align,
      child: child,
    );
  }

  Widget Textwid(data) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          data,
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 19,
              fontFamily: GoogleFonts.montserrat().fontFamily),
        ),
      ),
    );
  }

  Widget Imagewid(image, context) {
    return Image.asset(
      image,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
    );
  }

  Widget Containerform(context, child) {
    return Container(
      child: child,
      height: 500,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.3),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0))),
    );
  }

  Widget textfieldwid(
      var hintText, bool obscureText, keyboardType, controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: TextField(
        controller: controller,
        style: TextStyle(color: Colors.black),
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[600]),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.blue),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0))),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.purple),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0)))),
      ),
    );
  }

  Widget textfielwiddate(var hintText, dataoftimedate) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Container(
        width: 250,
        child: TextField(
          enabled: false,
          decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: dataoftimedate == null ? hintText : dataoftimedate,
              hintStyle: TextStyle(color: Colors.grey[600]),
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.purple),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0)))),
        ),
      ),
    );
  }

  Widget Iconbtn(iconbtn, icon) {
    return IconButton(onPressed: iconbtn, icon: icon);
  }

  Widget Elevatedbtn(elevetedButton, text) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
        onPressed: elevetedButton,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 23,
            ),
          ),
        ));
  }

  Future dialogBox(BuildContext context, String message) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "OK",
                style: TextStyle(
                  color: Colors.pink[600],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget containerAns(context, child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: child,
      height: 180,
      width: MediaQuery.of(context).size.width,
    );
  }
}
