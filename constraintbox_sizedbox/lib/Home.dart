import 'package:constraintbox_sizedbox/utils/Cus.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Cus cus = Cus();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Color.fromARGB(255, 113, 113, 113),
          ),
          Container(
            color: Color(0xff181818),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                cus.cb("assets/icons8-visual-studio-100.png"),
                cus.cb("assets/copy-two-paper-sheets-interface-symbol.png"),
                cus.cb("assets/search.png"),
                cus.cb("assets/git.png"),
                cus.cb("assets/web-coding.png"),
                cus.cb("assets/extension.png"),
                cus.cb("assets/monitor.png"),
                cus.cb("assets/test.png"),
                cus.cb("assets/icons8-flutter-500.png"),
                cus.cb("assets/github.png"),
                SizedBox(
                  width: 56,
                  height: 75,
                ),
                cus.cb("assets/user.png"),
                cus.cb("assets/setting.png"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 56),
            child: Container(
              color: Color(0xff181818),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 53,
                    child: Text(
                      'File',
                      style: TextStyle(color: Color(0xffDBD0D0), fontSize: 17),
                    ),
                  ),
                  Container(
                    width: 53,
                    child: Text(
                      'Edit',
                      style: TextStyle(color: Color(0xffDBD0D0), fontSize: 17),
                    ),
                  ),
                  Container(
                    width: 83,
                    child: Text(
                      'Selection',
                      style: TextStyle(color: Color(0xffDBD0D0), fontSize: 17),
                    ),
                  ),
                  Container(
                    width: 55,
                    child: Text(
                      'View',
                      style: TextStyle(color: Color(0xffDBD0D0), fontSize: 17),
                    ),
                  ),
                  Container(
                    width: 53,
                    child: Text(
                      'Go',
                      style: TextStyle(color: Color(0xffDBD0D0), fontSize: 17),
                    ),
                  ),
                  Container(
                    width: 53,
                    child: Text(
                      'Run',
                      style: TextStyle(color: Color(0xffDBD0D0), fontSize: 17),
                    ),
                  ),
                  cus.cb1("assets/more.png", 45, 8),
                  SizedBox(
                    width: 50,
                  ),
                  cus.cb1("assets/back.png", 45, 8),
                  cus.cb1("assets/next.png", 45, 8),
                  Container(
                    height: 30,
                    width: 500,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 55, 55, 55),
                        border: Border.all(
                            color: Color.fromARGB(255, 113, 113, 113),
                            width: 1)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 20,
                              child: Image.asset(
                                'assets/search.png',
                                color: Color(0xff868686),
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'constraintbox_sizedbox',
                              style: TextStyle(
                                color: Color(0xff868686),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(math.pi),
                      child: cus.cb1("assets/sidebar (2).png", 35, 4)),
                  cus.cb1("assets/side-bar.png", 35, 5),
                  Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(math.pi),
                      child: cus.cb1("assets/sidebar.png", 35, 5)),
                  cus.cb1("assets/layout.png", 35, 8),
                  SizedBox(
                    width: 15,
                  ),
                  cus.cb1("assets/minus-sign.png", 55, 11),
                  cus.cb1("assets/squares.png", 55, 11),
                  cus.cb1("assets/close.png", 55, 11),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
