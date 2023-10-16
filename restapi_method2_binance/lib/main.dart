import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restapi_method2_binance/HomeName.dart';
import 'package:restapi_method2_binance/util/ListProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ListProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomeName(),
      ),
    );
  }
}
