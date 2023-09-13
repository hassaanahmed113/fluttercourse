import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomWidget {
  var output;
  Widget Textwid(data, colors, fontsize, fontfamily, fontweight) {
    return Text(
      data,
      style: TextStyle(
          color: colors,
          fontSize: fontsize,
          fontFamily: fontfamily,
          fontWeight: fontweight),
    );
  }

  Widget Paddingwid(padding, child) {
    return Padding(padding: padding, child: child);
  }

  Widget Aligmentwid(aligment, child) {
    return Align(alignment: aligment, child: child);
  }

  Future dialogbox(context, donedata, text) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Textwid(text, Colors.black, 23,
              GoogleFonts.fjallaOne().fontFamily, FontWeight.normal),
          content: TextField(
              onChanged: (value) {
                output = value;
              },
              decoration: InputDecoration(
                  hintText: "Write your task here...",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                    borderSide:
                        BorderSide(width: 1, color: Colors.deepPurpleAccent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(width: 1, color: Colors.pink),
                  ))),
          actions: [
            TextButton(
                onPressed: donedata,
                child: Text(
                  "Done",
                  style: TextStyle(color: Colors.pink[600], fontSize: 20),
                )),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Cancel",
                  style: TextStyle(color: Colors.black54, fontSize: 20),
                )),
          ],
        );
      },
    );
  }
}
