import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomWidget {
  var activitydata, labeldata, date;
//anytype of text
  Widget Textwid(data, colors, fontsize, fontweight, fontfamily) {
    return Text(
      data,
      style: TextStyle(
          color: colors,
          fontSize: fontsize,
          fontWeight: fontweight,
          fontFamily: fontfamily),
    );
  }

  Widget padding(padding, child) {
    return Padding(
      padding: padding,
      child: child,
    );
  }

  Widget Aligment(aligment, child) {
    return Align(
      alignment: aligment,
      child: child,
    );
  }

  Widget listTodo(
      activitylist, length, labellist, datelist, deleteFunction, editFunction) {
    return ListView.builder(
      itemCount: length,
      itemBuilder: (context, index) {
        return padding(
          EdgeInsets.symmetric(vertical: 5),
          Container(
            decoration: BoxDecoration(
                color: index.isEven ? Colors.grey[200] : Colors.grey[400],
                borderRadius: index.isEven
                    ? BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(10))
                    : BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        topLeft: Radius.circular(10))),
            height: 80,
            child: padding(
              EdgeInsets.only(left: 4),
              Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: 95,
                    child: Center(
                      child: Textwid(activitylist[index], Colors.black87, 15,
                          FontWeight.bold, GoogleFonts.aleo().fontFamily),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: 90,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 23, horizontal: 8),
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: labellist[index] == "Priorty" ||
                                    labellist[index] == "priorty"
                                ? Colors.red[500]
                                : labellist[index] == "Complete" ||
                                        labellist[index] == "complete"
                                    ? Colors.green[300]
                                    : labellist[index] == "Dolater" ||
                                            labellist[index] == "dolater"
                                        ? Colors.orange[300]
                                        : Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: padding(
                            EdgeInsets.all(7),
                            Textwid(
                                labellist[index],
                                Colors.black,
                                13,
                                FontWeight.normal,
                                GoogleFonts.aleo().fontFamily),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: 120,
                    child: Center(
                      child: Textwid(datelist[index], Colors.black87, 15,
                          FontWeight.bold, GoogleFonts.aleo().fontFamily),
                    ),
                  ),
                  Aligment(
                    Alignment.topRight,
                    Column(
                      children: [
                        IconButton(
                            onPressed: () => editFunction(context, index),
                            icon: Icon(
                              Icons.edit,
                              color: Colors.grey[700],
                            )),
                        IconButton(
                            onPressed: () => deleteFunction(context, index),
                            icon: Icon(
                              Icons.delete,
                              color: Colors.grey[700],
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
