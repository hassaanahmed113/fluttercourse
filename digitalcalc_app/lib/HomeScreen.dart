import 'dart:async';
import 'dart:math';

import 'package:Digicalc_App/util/CustomWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CustomWidget customWidget = CustomWidget();
  List<dynamic> calc = [];
  List<dynamic> resultcalc = [];
  var result = "";
  var data = "";
  late Future<bool> _imageLoaded;
  late ImageProvider _backgroundImage;

  @override
  void initState() {
    super.initState();
    _backgroundImage = AssetImage("assets/Untitled design.png");
    _imageLoaded = _loadImage();
  }

  Future<bool> _loadImage() async {
    final Completer<bool> completer = Completer<bool>();
    final ImageStream stream =
        _backgroundImage.resolve(const ImageConfiguration());

    stream.addListener(
        ImageStreamListener((ImageInfo info, bool synchronousCall) {
      completer.complete(true);
    }));

    return completer.future;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
        future: _imageLoaded,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
                child: CircularProgressIndicator(
              color: Colors.pink[200],
            ));
          } else if (snapshot.hasError) {
            return Center(child: Text("Failed to load image"));
          } else {
            return SafeArea(
              child: Scaffold(
                  body: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/Untitled design.png"),
                              fit: BoxFit.cover)),
                      child: customWidget.paddingWid(
                        EdgeInsets.symmetric(horizontal: 20),
                        Column(
                          children: [
                            customWidget.alignmentWid(
                                Alignment.topLeft,
                                customWidget.listResult(
                                    calc, resultcalc, calc.length)),
                            customWidget.boxheight(10),
                            customWidget.fieldtextWid(),
                            customWidget.boxheight(20),
                            customWidget.alignmentWid(
                              Alignment.topRight,
                              customWidget.paddingWid(
                                EdgeInsets.symmetric(horizontal: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomWidget().textWid(
                                        result,
                                        Colors.white,
                                        31,
                                        FontWeight.bold,
                                        GoogleFonts.roboto().fontFamily),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        customWidget.inkwellWid(
                                          () {
                                            //(
                                            setState(() {
                                              var text = customWidget
                                                  .textcontroller.text;
                                              var text1 = text == ""
                                                  ? ""
                                                  : text.substring(
                                                      0, text.length - 1);

                                              customWidget.textcontroller.text =
                                                  text1;
                                            });
                                          },
                                          customWidget.containerWid1(
                                              52,
                                              50,
                                              BorderRadius.all(
                                                  Radius.circular(12)),
                                              Color(0xff363035),
                                              "assets/Untitled design (1).png"),
                                        ),
                                        customWidget.boxwidth(15),
                                        customWidget.inkwellWid(
                                          () {
                                            //(
                                            setState(() {
                                              customWidget.textcontroller.text
                                                      .isEmpty
                                                  ? customWidget
                                                      .textcontroller.text = "("
                                                  : customWidget
                                                          .textcontroller.text =
                                                      "${customWidget.textcontroller.text}(";
                                            });
                                          },
                                          customWidget.containerWid(
                                              50,
                                              48,
                                              BorderRadius.all(
                                                  Radius.circular(12)),
                                              Color(0xff740076),
                                              "(",
                                              Colors.white,
                                              28,
                                              FontWeight.bold,
                                              GoogleFonts.roboto().fontFamily),
                                        ),
                                        customWidget.boxwidth(15),
                                        customWidget.inkwellWid(
                                          () {
                                            //)
                                            setState(() {
                                              customWidget.textcontroller.text
                                                      .isEmpty
                                                  ? customWidget
                                                      .textcontroller.text = ""
                                                  : customWidget
                                                          .textcontroller.text =
                                                      "${customWidget.textcontroller.text})";
                                            });
                                          },
                                          customWidget.containerWid(
                                              50,
                                              48,
                                              BorderRadius.all(
                                                  Radius.circular(12)),
                                              Color(0xff740076),
                                              ")",
                                              Colors.white,
                                              28,
                                              FontWeight.bold,
                                              GoogleFonts.roboto().fontFamily),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            customWidget.boxheight(40),
                            // grid 1 C % ÷ ×
                            customWidget.gridData(
                              () {
                                setState(() {
                                  customWidget.textcontroller.clear();
                                });
                              },
                              () {
                                //x²
                                if (customWidget
                                    .textcontroller.text.isNotEmpty) {
                                  setState(() {
                                    String expression =
                                        customWidget.textcontroller.text;
                                    Parser parser = Parser();
                                    Expression exp = parser.parse(expression);
                                    ContextModel contextModel = ContextModel();
                                    num eval = exp.evaluate(
                                        EvaluationType.REAL, contextModel);
                                    num dataa = eval * eval;
                                    if (eval % 1 == 0) {
                                      result = dataa.toInt().toString();
                                    } else {
                                      result = dataa.toStringAsFixed(1);
                                    }
                                    calc.add(customWidget.textcontroller.text);
                                    resultcalc.add(result);
                                    print(result);
                                  });
                                }
                              },
                              () {
                                //÷
                                setState(() {
                                  customWidget.textcontroller.text.isEmpty
                                      ? customWidget.textcontroller.text = ""
                                      : customWidget.textcontroller.text =
                                          "${customWidget.textcontroller.text}/";
                                });
                              },
                              () {
                                //x
                                setState(() {
                                  customWidget.textcontroller.text.isEmpty
                                      ? customWidget.textcontroller.text = ""
                                      : customWidget.textcontroller.text =
                                          "${customWidget.textcontroller.text}*";
                                });
                              },
                              () {
                                //7
                                setState(() {
                                  customWidget
                                      .textcontroller.text = customWidget
                                              .textcontroller.text ==
                                          null
                                      ? "7"
                                      : "${customWidget.textcontroller.text}7";
                                });
                              },
                              () {
                                //8
                                setState(() {
                                  customWidget
                                      .textcontroller.text = customWidget
                                              .textcontroller.text ==
                                          null
                                      ? "8"
                                      : "${customWidget.textcontroller.text}8";
                                });
                              },
                              () {
                                //9
                                setState(() {
                                  customWidget
                                      .textcontroller.text = customWidget
                                              .textcontroller.text ==
                                          null
                                      ? "9"
                                      : "${customWidget.textcontroller.text}9";
                                });
                              },
                              () {
                                //minus
                                setState(() {
                                  customWidget.textcontroller.text.isEmpty
                                      ? customWidget.textcontroller.text = ""
                                      : customWidget.textcontroller.text =
                                          "${customWidget.textcontroller.text}-";
                                });
                              },
                              () {
                                //4
                                setState(() {
                                  customWidget
                                      .textcontroller.text = customWidget
                                              .textcontroller.text ==
                                          null
                                      ? "4"
                                      : "${customWidget.textcontroller.text}4";
                                });
                              },
                              () {
                                //5
                                setState(() {
                                  customWidget
                                      .textcontroller.text = customWidget
                                              .textcontroller.text ==
                                          null
                                      ? "5"
                                      : "${customWidget.textcontroller.text}5";
                                });
                              },
                              () {
                                //6
                                setState(() {
                                  customWidget
                                      .textcontroller.text = customWidget
                                              .textcontroller.text ==
                                          null
                                      ? "6"
                                      : "${customWidget.textcontroller.text}6";
                                });
                              },
                              () {
                                //plus
                                setState(() {
                                  customWidget.textcontroller.text.isEmpty
                                      ? customWidget.textcontroller.text = ""
                                      : customWidget.textcontroller.text =
                                          "${customWidget.textcontroller.text}+";
                                });
                              },
                              () {
                                //1
                                setState(() {
                                  customWidget
                                      .textcontroller.text = customWidget
                                              .textcontroller.text ==
                                          null
                                      ? "1"
                                      : "${customWidget.textcontroller.text}1";
                                });
                              },
                              () {
                                //2
                                setState(() {
                                  customWidget
                                      .textcontroller.text = customWidget
                                              .textcontroller.text ==
                                          null
                                      ? "2"
                                      : "${customWidget.textcontroller.text}2";
                                });
                              },
                              () {
                                //3
                                setState(() {
                                  customWidget
                                      .textcontroller.text = customWidget
                                              .textcontroller.text ==
                                          null
                                      ? "3"
                                      : "${customWidget.textcontroller.text}3";
                                });
                              },
                              () {
                                //functionfactorial
                                if (customWidget
                                    .textcontroller.text.isNotEmpty) {
                                  setState(() {
                                    String expression =
                                        customWidget.textcontroller.text;
                                    Parser parser = Parser();
                                    Expression exp = parser.parse(expression);
                                    ContextModel contextModel = ContextModel();
                                    num eval = exp.evaluate(
                                        EvaluationType.REAL, contextModel);

                                    for (num i = eval - 1; i > 0; i--) {
                                      eval *= i;
                                    }
                                    if (eval % 1 == 0) {
                                      result = eval.toInt().toString();
                                    } else {
                                      result = eval.toStringAsFixed(1);
                                    }
                                    calc.add(customWidget.textcontroller.text);
                                    resultcalc.add(result);
                                    print(result);
                                  });
                                }
                              },
                              () {
                                //0
                                setState(() {
                                  customWidget.textcontroller.text.isEmpty
                                      ? customWidget.textcontroller.text = ""
                                      : customWidget.textcontroller.text =
                                          "${customWidget.textcontroller.text}0";
                                });
                              },
                              () {
                                //dot
                                setState(() {
                                  customWidget.textcontroller.text.isEmpty
                                      ? customWidget.textcontroller.text = ""
                                      : customWidget.textcontroller.text =
                                          "${customWidget.textcontroller.text}.";
                                });
                              },
                              () {
                                //functionsqrt
                                if (customWidget
                                    .textcontroller.text.isNotEmpty) {
                                  setState(() {
                                    String expression =
                                        customWidget.textcontroller.text;
                                    Parser parser = Parser();
                                    Expression exp = parser.parse(expression);
                                    ContextModel contextModel = ContextModel();
                                    num eval = exp.evaluate(
                                        EvaluationType.REAL, contextModel);

                                    double exp1 = sqrt(eval);
                                    if (exp1 % 1 == 0) {
                                      result = exp1.toInt().toString();
                                    } else {
                                      result = exp1.toStringAsFixed(1);
                                    }
                                    calc.add(customWidget.textcontroller.text);
                                    resultcalc.add(result);
                                    print(result);
                                  });
                                }
                              },
                              () {
                                //functionequaltoclick
                                if (customWidget
                                    .textcontroller.text.isNotEmpty) {
                                  setState(() {
                                    String expression =
                                        customWidget.textcontroller.text;
                                    Parser parser = Parser();
                                    Expression exp = parser.parse(expression);
                                    ContextModel contextModel = ContextModel();
                                    num eval = exp.evaluate(
                                        EvaluationType.REAL, contextModel);
                                    if (eval % 1 == 0) {
                                      result = eval.toInt().toString();
                                    } else {
                                      result = eval.toStringAsFixed(1);
                                    }
                                    calc.add(customWidget.textcontroller.text);
                                    resultcalc.add(result);

                                    print(result);
                                  });
                                }
                              },
                            ),
                          ],
                        ),
                      ))),
            );
          }
        });
  }
}
