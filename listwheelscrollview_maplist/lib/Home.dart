import 'package:flutter/material.dart';
import 'package:clickable_list_wheel_view/clickable_list_wheel_widget.dart';
import 'package:clickable_list_wheel_view/measure_size.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _scrollController1 = FixedExtentScrollController();
  final _scrollController2 = FixedExtentScrollController();
  final _scrollController3 = FixedExtentScrollController();
  final double _itemHeight = 100;
  var amapList = [
    {'name': 'Apple', 'image': 'assets/a1.PNG'},
    {'name': 'Mango', 'image': 'assets/a2.PNG'},
    {'name': 'Watermelon', 'image': 'assets/a3.PNG'},
    {'name': 'Mangosteen', 'image': 'assets/a4.PNG'},
    {'name': 'Strawberries', 'image': 'assets/a5.PNG'},
  ];

  var bmapList = [
    {'name': 'Banana', 'image': 'assets/b1.PNG'},
    {'name': 'Lemon', 'image': 'assets/b2.PNG'},
    {'name': 'Dragonrfruit', 'image': 'assets/b3.PNG'},
    {'name': 'Pineapple', 'image': 'assets/b4.PNG'},
    {'name': 'Orange', 'image': 'assets/b5.PNG'},
  ];
  var cmapList = [
    {'name': 'Kiwi', 'image': 'assets/c1.PNG'},
    {'name': 'Avocados', 'image': 'assets/c2.PNG'},
    {'name': 'Grape', 'image': 'assets/c3.PNG'},
    {'name': 'Cherry', 'image': 'assets/c4.PNG'},
    {'name': 'Papaya', 'image': 'assets/c5.PNG'},
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final itema = amapList[0];
    final itemb = bmapList[0];
    final itemc = cmapList[0];
    setState(() {
      item1 = itema['name'].toString();
      item2 = itemb['name'].toString();
      item3 = itemc['name'].toString();
    });
  }

  String item1 = "", item2 = "", item3 = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.indigo[400],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "FRUITS NAME WHEEL",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 260,
                  width: 100,
                  child: ClickableListWheelScrollView(
                    scrollController: _scrollController1,
                    itemHeight: _itemHeight,
                    itemCount: amapList.length,
                    onItemTapCallback: (index) {
                      print("onItemTapCallback index: $index");
                    },
                    child: ListWheelScrollView.useDelegate(
                      controller: _scrollController1,
                      itemExtent: _itemHeight,
                      physics: FixedExtentScrollPhysics(),
                      overAndUnderCenterOpacity: 0.4,
                      perspective: 0.002,
                      onSelectedItemChanged: (index) {
                        print("onSelectedItemChanged index: $index");
                        final item = amapList[index];
                        setState(() {
                          item1 = item['name'].toString();
                        });
                      },
                      childDelegate: ListWheelChildBuilderDelegate(
                        builder: (context, index) {
                          final item = amapList[index];

                          return Card(
                            color: Colors.white,
                            child: Image.asset(
                              item['image'] ?? '',
                              fit: BoxFit.fitHeight,
                            ),
                          );
                        },
                        childCount: amapList.length,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 260,
                  width: 100,
                  child: ClickableListWheelScrollView(
                    scrollController: _scrollController2,
                    itemHeight: _itemHeight,
                    itemCount: bmapList.length,
                    onItemTapCallback: (index) {
                      print("onItemTapCallback index: $index");
                    },
                    child: ListWheelScrollView.useDelegate(
                      controller: _scrollController2,
                      itemExtent: _itemHeight,
                      physics: FixedExtentScrollPhysics(),
                      overAndUnderCenterOpacity: 0.4,
                      perspective: 0.002,
                      onSelectedItemChanged: (index) {
                        print("onSelectedItemChanged index: $index");
                        final item = bmapList[index];
                        setState(() {
                          item2 = item['name'].toString();
                        });
                      },
                      childDelegate: ListWheelChildBuilderDelegate(
                        builder: (context, index) {
                          final item = bmapList[index];
                          return Card(
                            color: Colors.white,
                            child: Image.asset(
                              item['image'] ?? '',
                              fit: BoxFit.fitHeight,
                            ),
                          );
                        },
                        childCount: bmapList.length,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 260,
                  width: 100,
                  child: ClickableListWheelScrollView(
                    scrollController: _scrollController3,
                    itemHeight: _itemHeight,
                    itemCount: cmapList.length,
                    onItemTapCallback: (index) {
                      print("onItemTapCallback index: $index");
                    },
                    child: ListWheelScrollView.useDelegate(
                      controller: _scrollController3,
                      itemExtent: _itemHeight,
                      physics: FixedExtentScrollPhysics(),
                      overAndUnderCenterOpacity: 0.4,
                      perspective: 0.002,
                      onSelectedItemChanged: (index) {
                        print("onSelectedItemChanged index: $index");
                        final item = cmapList[index];
                        setState(() {
                          item3 = item['name'].toString();
                        });
                      },
                      childDelegate: ListWheelChildBuilderDelegate(
                        builder: (context, index) {
                          final item = cmapList[index];
                          return Card(
                            color: Colors.white,
                            child: Image.asset(
                              item['image'] ?? '',
                              fit: BoxFit.fitHeight,
                            ),
                          );
                        },
                        childCount: cmapList.length,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Result: ${item1.toString()} , ${item2.toString()} , ${item3.toString()}",
              style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    ));
  }
}
