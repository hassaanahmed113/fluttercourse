import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Container(
            height: 700,
            width: 400,
            child: Padding(
              padding: const EdgeInsets.only(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: ListTile(
                      tileColor: Colors.black,
                      leading: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 30,
                                child: Icon(
                                  FontAwesomeIcons.facebook,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "hassaanahmed113",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 30,
                                child: Icon(
                                  FontAwesomeIcons.instagram,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "hassaan_ahmed113",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 7,
                      blurStyle: BlurStyle.outer)
                ],
                border: Border.all(width: 2, color: Colors.white),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage(
                        "assets/285759656_3163714760542843_4639983239800667001_n.jpg"),
                    fit: BoxFit.fitHeight)),
          ),
        ),
      ),
    );
  }
}
