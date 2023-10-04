import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> image = [
    'assets/im1.jpg',
    'assets/im2.jpg',
    'assets/im3.jpg',
    'assets/im4.jpg',
    'assets/im5.jpg',
    'assets/im6.jpg',
    'assets/im7.jpg',
    'assets/im8.jpg',
    'assets/im9.jpg',
    'assets/im10.jpg',
    'assets/im11.jpg',
    'assets/im12.jpg',
    'assets/im13.jpg',
    'assets/im14.jpg',
    'assets/im15.jpg',
    'assets/im16.jpg',
    'assets/im17.jpg',
    'assets/im18.jpg',
    'assets/im19.jpg',
    'assets/im20.jpg'
  ];
  List<dynamic> name = [
    'Xiaomi Redmi Note 12S',
    'Vivo Y27',
    'Tecno Camon 20 Pro',
    'Infinix Note 30',
    'Xiaomi Redmi 12',
    'Infinix Hot 30',
    'Xiaomi Redmi Note 12',
    'Honor X6',
    'Samsung Galaxy A04',
    'Tecno Pova Neo 2',
    'Sparx Neo 7',
    'Sparx Neo 7',
    'Tecno Spark 10',
    'Sparx Neo 8',
    'itel A60s',
    'Dcode Cygnal 3',
    'itel A49 Play',
    'Sparx S9',
    'itel 2173',
    'itel i9010 4G'
  ];
  List<double> price = [
    74999,
    64999,
    60999,
    53999,
    41999,
    39999,
    66999,
    40999,
    42999,
    41999,
    38999,
    35999,
    39999,
    29499,
    24999,
    29999,
    16999,
    12999,
    2300,
    4049
  ];
  double minPrice = 0;
  double maxPrice = 80000;
  List<int> indexDisplay = List.generate(20, (index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mobile Shop",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          RangeSlider(
            values: RangeValues(minPrice, maxPrice),
            min: 0,
            max: 100000,
            activeColor: Colors.green,
            divisions: 10,
            inactiveColor: Colors.grey[600],
            labels: RangeLabels("Rs. ${minPrice}", "Rs. ${maxPrice}"),
            onChanged: (value) {
              setState(() {
                minPrice = value.start;
                maxPrice = value.end;
                indexDisplay = List.generate(20, (index) {
                  if (price[index] >= minPrice && price[index] <= maxPrice) {
                    return index;
                  } else {
                    return -1;
                  }
                }).where((index) => index != -1).toList();
              });
            },
          ),
          Expanded(
              child: GridView.builder(
            itemCount: indexDisplay.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, childAspectRatio: 1.0, mainAxisExtent: 330),
            itemBuilder: (context, index) {
              final indexItem = indexDisplay[index];
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Image.asset(image[indexItem]),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        name[indexItem],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.grey[900]),
                      ),
                      Text(
                        price[indexItem].toString(),
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 14, color: Colors.green[800]),
                      ),
                    ],
                  ),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
