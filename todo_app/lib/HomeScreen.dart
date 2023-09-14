import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/util/CustomWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  CustomWidget customWidget = CustomWidget();
  var editcontroller = TextEditingController();
  List<dynamic> data = [];
  var output1;
  var datab;

  void removeItem(int index) {
    setState(() {
      data.removeAt(index);
    });
  }

  void showlength() {
    setState(() {
      data.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "assets/vivid-blurred-colorful-wallpaper-background.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            customWidget.Paddingwid(
              EdgeInsets.only(top: 40, left: 20, right: 20),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                customWidget.Aligmentwid(
                    Alignment.topLeft,
                    customWidget.Textwid("TODO APP", Colors.white, 42,
                        GoogleFonts.fjallaOne().fontFamily, FontWeight.bold)),
                customWidget.Aligmentwid(
                    Alignment.topRight,
                    customWidget.Textwid(
                        datab == null ? "TOTAL : 0" : "TOTAL : $datab",
                        Colors.white,
                        20,
                        GoogleFonts.aleo().fontFamily,
                        FontWeight.bold)),
              ]),
            ),
            customWidget.Paddingwid(
                EdgeInsets.symmetric(horizontal: 20),
                Container(
                  color: Colors.white,
                  height: 4,
                  width: MediaQuery.of(context).size.width,
                )),
            Expanded(
                child: customWidget.Paddingwid(
              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                          color: index.isEven
                              ? Colors.deepPurpleAccent[400]
                              : Colors.cyanAccent[400],
                          borderRadius: index.isEven
                              ? BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                )
                              : BorderRadius.only(
                                  bottomRight: Radius.circular(10.0),
                                  topLeft: Radius.circular(10.0),
                                )),
                      child: ListTile(
                        leading: index.isEven
                            ? Text(
                                "${index + 1}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              )
                            : Text(
                                "${index + 1}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                        title: index.isEven
                            ? Text(
                                "${data[index]}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              )
                            : Text(
                                "${data[index]}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                              onTap: () {
                                editcontroller.text = data[index].toString();
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: customWidget.Textwid(
                                          "Write Updated Text",
                                          Colors.black,
                                          23,
                                          GoogleFonts.fjallaOne().fontFamily,
                                          FontWeight.normal),
                                      content: TextField(
                                          controller: editcontroller,
                                          onChanged: (value) {
                                            output1 = value;
                                          },
                                          decoration: InputDecoration(
                                              hintText:
                                                  "Write your updated text here...",
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(10.0),
                                                  topRight:
                                                      Radius.circular(10.0),
                                                ),
                                                borderSide: BorderSide(
                                                    width: 1,
                                                    color: Colors
                                                        .deepPurpleAccent),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(10.0),
                                                  topLeft:
                                                      Radius.circular(10.0),
                                                ),
                                                borderSide: BorderSide(
                                                    width: 1,
                                                    color: Colors.pink),
                                              ))),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              if (output1 != null) {
                                                setState(() {
                                                  data.replaceRange(index,
                                                      index + 1, {output1});
                                                });
                                              }

                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              "Done",
                                              style: TextStyle(
                                                  color: Colors.pink[600],
                                                  fontSize: 20),
                                            )),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text(
                                              "Cancel",
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 20),
                                            )),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Icon(
                                Icons.edit,
                                color:
                                    index.isEven ? Colors.white : Colors.black,
                                size: 23,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {});
                                data.removeAt(index);
                                datab = data.length;
                              },
                              child: Icon(
                                Icons.delete,
                                color:
                                    index.isEven ? Colors.white : Colors.black,
                                size: 23,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: data.length,
              ),
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
          customWidget.dialogbox(context, () {
            var dataofoutput = customWidget.output;
            if (dataofoutput != null) {
              data.add(dataofoutput);
              print(dataofoutput);
              datab = data.length;

              setState(() {});
            }
            Navigator.pop(context);
          }, "Write your Task");
        },
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
