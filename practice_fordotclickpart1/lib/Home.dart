import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_fordotclickpart1/Utils/CustomWidget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CustomWidget cus = CustomWidget();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          // body: SingleChildScrollView(
          //   child: Column(
          //     children: [cus.textCus(), cus.conCus(), cus.conCus1(context)],
          //   ),
          // ),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.purple,
            centerTitle: true,
            title: Text("hassaan"),
            actions: [Icon(Icons.notification_add), Icon(Icons.plus_one)],
            bottom: const TabBar(isScrollable: true, tabs: [
              Tab(
                icon: Icon(Icons.person),
                text: "person",
              ),
              Tab(
                icon: Icon(Icons.phone),
                text: "phone",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "person",
              ),
              Tab(
                icon: Icon(Icons.phone),
                text: "phone",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "person",
              ),
              Tab(
                icon: Icon(Icons.phone),
                text: "phone",
              )
            ]),
          ),
          body: TabBarView(children: [
            Person(),
            Phone(),
            Person(),
            Phone(),
            Person(),
            Phone(),
          ])

          // SingleChildScrollView(
          //   child: Container(
          //     width: MediaQuery.of(context).size.width,
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         cus.textCus(),
          //         cus.conCus(),
          //         cus.conCus1(context),
          //         cus.buttonOne(),
          //         cus.buttonTwo(),
          //         cus.buttonThree(),
          //         cus.rowOne(),
          //         cus.listCusHorizontal(context),
          //         cus.listCusVertical(),
          //         cus.gridCusBuilder(),
          //         cus.gridCusCount(),
          //       ],
          //     ),
          //   ),
          // ),
          ),
    );
  }
}

class Person extends StatefulWidget {
  const Person({super.key});

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  CustomWidget cus = CustomWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cus.textCus(),
    );
  }
}

class Phone extends StatefulWidget {
  const Phone({super.key});

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  CustomWidget cus = CustomWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cus.textCus(),
    );
  }
}
