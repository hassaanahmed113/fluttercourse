import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class StackWid extends StatefulWidget {
  const StackWid({super.key});

  @override
  State<StackWid> createState() => _StackWidState();
}

class _StackWidState extends State<StackWid> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                  'https://plus.unsplash.com/premium_photo-1676637000058-96549206fe71?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D'),
              Text("Hassaan"),
              Text("${time.hour} ${time.minute} ${time.second}"),
              Text("${DateFormat.yMd().format(time)}}"),
              Text("Hassaan"),
              Text("Hassaan"),
              Text("Hassaan"),
            ],
          ),
        )
        // Stack(
        //   alignment: Alignment.center,
        //   children: [
        //     Positioned(
        //       left: 50,
        //       right: 50,
        //       child: Container(
        //         height: 200,
        //         width: 200,
        //         color: Colors.black,
        //       ),
        //     ),

        //     Positioned(
        //       left: 50,
        //       right: 50,
        //       child: Container(
        //         height: 50,
        //         width: 50,
        //         color: Colors.purple,
        //       ),
        //     ),
        //   ],
        // ),
        );
  }
}
