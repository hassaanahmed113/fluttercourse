import 'package:flutter/material.dart';
import 'package:practice_fordotclickpart1/AudioWid.dart';
import 'package:practice_fordotclickpart1/Home.dart';
import 'package:practice_fordotclickpart1/SplashScreen.dart';
import 'package:practice_fordotclickpart1/StackWid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: AudioWid());
  }
}
