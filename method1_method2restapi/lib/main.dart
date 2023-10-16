import 'package:flutter/material.dart';
import 'package:method1_method2restapi/MethodoneApi.dart';
import 'package:method1_method2restapi/MethodtwoApi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MethodtwoApi(),
    );
  }
}
