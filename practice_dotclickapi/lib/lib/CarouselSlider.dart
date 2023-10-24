import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
          items: [
            Card(
              child: Text("Hello1"),
            ),
            Card(
              child: Text("Hello2"),
            ),
            Card(
              child: Text("Hello3"),
            )
          ],
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          )),
      //     body: CarouselSlider(
      //   items: [
      //     Card(
      //       elevation: 2,
      //       clipBehavior: Clip.antiAliasWithSaveLayer,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(10.0),
      //       ),
      //       child: Image.asset(
      //         'assets/im1.PNG',
      //         fit: BoxFit.fitHeight,
      //       ),
      //     ),
      //     Card(
      //       elevation: 2,
      //       clipBehavior: Clip.antiAliasWithSaveLayer,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(10.0),
      //       ),
      //       child: Image.asset(
      //         'assets/im2.PNG',
      //         fit: BoxFit.fitHeight,
      //       ),
      //     ),
      //     Card(
      //       elevation: 2,
      //       clipBehavior: Clip.antiAliasWithSaveLayer,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(10.0),
      //       ),
      //       child: Image.asset(
      //         'assets/im3.PNG',
      //         fit: BoxFit.fitHeight,
      //       ),
      //     ),
      //     Card(
      //       elevation: 2,
      //       clipBehavior: Clip.antiAliasWithSaveLayer,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(10.0),
      //       ),
      //       child: Image.asset(
      //         'assets/im4.PNG',
      //         fit: BoxFit.fill,
      //       ),
      //     ),
      //     Card(
      //       elevation: 2,
      //       clipBehavior: Clip.antiAliasWithSaveLayer,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(10.0),
      //       ),
      //       child: Image.asset(
      //         'assets/im4.PNG',
      //         fit: BoxFit.fill,
      //       ),
      //     ),
      //   ],
      //   options: CarouselOptions(
      //     autoPlay: true,
      //     autoPlayInterval: Duration(seconds: 3), // Adjust as needed
      //     enlargeCenterPage: true,
      //     onPageChanged: (index, reason) {
      //       setState(() {
      //         _currentIndex = index;
      //       });
      //     },
      //   ),
      // )
    );
  }
}
