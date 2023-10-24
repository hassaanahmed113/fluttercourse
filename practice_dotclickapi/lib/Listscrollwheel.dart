import 'package:clickable_list_wheel_view/clickable_list_wheel_widget.dart';
import 'package:flutter/material.dart';

class Listscrollwheel extends StatefulWidget {
  const Listscrollwheel({super.key});

  @override
  State<Listscrollwheel> createState() => _ListscrollwheelState();
}

class _ListscrollwheelState extends State<Listscrollwheel> {
  final _scrollcontroller = FixedExtentScrollController();

  List<dynamic> data = [
    {
      'name': 'hassaan',
    },
    {
      'name': 'jibran',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClickableListWheelScrollView(
        scrollController: _scrollcontroller,
        itemHeight: 200,
        itemCount: data.length,
        onItemTapCallback: (index) {
          print("onItemTapCallback index: $index");
        },
        child: ListWheelScrollView.useDelegate(
          controller: _scrollcontroller,
          itemExtent: 200,
          physics: FixedExtentScrollPhysics(),
          overAndUnderCenterOpacity: 0.5,
          perspective: 0.002,
          onSelectedItemChanged: (index) {
            print("onSelectedItemChanged index: $index");
          },
          childDelegate: ListWheelChildBuilderDelegate(
            builder: (context, index) {
              final item = data[index];
              return Container(
                child: Text(item['name'].toString()),
              );
            },
            childCount: data.length,
          ),
        ),
      ),
    );
  }
}
