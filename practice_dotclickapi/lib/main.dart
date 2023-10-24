import 'package:flutter/material.dart';
import 'package:practice_dotclickapi/Listscrollwheel.dart';
import 'package:practice_dotclickapi/lib/CarouselSlider.dart';
import 'package:practice_dotclickapi/lib/RangeSlider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Listscrollwheel(),
    );
  }
}



    // final Uri _url = Uri.parse(widget.githubLink);
    //                             if (!await launchUrl(_url)) {
    //                               throw Exception('Could not launch $_url');
    //                             }