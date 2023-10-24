import 'package:flutter/material.dart';

class Rangeslider extends StatefulWidget {
  const Rangeslider({super.key});

  @override
  State<Rangeslider> createState() => _RangesliderState();
}

List<int> price = [7000, 8000, 4000];

class _RangesliderState extends State<Rangeslider> {
  double minPrice = 0;
  double maxPrice = 9000;
  List<int> indexDisplay = List.generate(3, (index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          RangeSlider(
            min: 0,
            max: 10000,
            divisions: 10,
            activeColor: Colors.blue,
            inactiveColor: Colors.grey,
            values: RangeValues(minPrice, maxPrice),
            labels: RangeLabels("${minPrice}}", "${maxPrice}"),
            onChanged: (value) {
              setState(() {
                minPrice = value.start;
                maxPrice = value.end;
                indexDisplay = List.generate(3, (index) {
                  if (price[index] >= minPrice && price[index] <= maxPrice) {
                    return index;
                  } else {
                    return -1;
                  }
                }).where((element) => element != -1).toList();
              });
            },
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: indexDisplay.length,
            itemBuilder: (context, index) {
              final item = indexDisplay[index];
              return Container(
                child: Text(
                  price[item].toString(),
                  style: TextStyle(color: Colors.black),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
