import 'package:flutter/material.dart';

var Images = [
  'assets/1.png',
  'assets/2.png',
  'assets/3.png',
  'assets/4.png',
  'assets/5.png',
  'assets/6.png',
  'assets/7.png',
  'assets/8.png',
  'assets/9.png',
  'assets/10.png',
  'assets/11.png'
];
var Titles = [
  'Money Transfer',
  'Easyload/Bundles',
  'Bill Payment',
  'Add Card',
  'Payment',
  'Top Ups',
  'Tohfa',
  'MY Cashback',
  'Tickets',
  'Discounts',
  'Remittance',
];

var Products = [
  'assets/electricity.png',
  'assets/internet.png',
  'assets/telephone.png',
  'assets/gas.png',
  'assets/water-tap.png',
  'assets/masjid.png',
  'assets/school.png',
  'assets/bank.png'
];

var ProductsName = [
  'electricity',
  'internet',
  'telephone',
  'gas',
  'water',
  'madarsa',
  'school',
  'bank'
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: Column(
          children: [
            Container(
                color: Colors.white,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 50,
                      child: Image.asset("assets/Easypaisa-logo.png")),
                )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 16.0, bottom: 16.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 100,
                      mainAxisSpacing: 30,
                      crossAxisSpacing: 30),
                  // SliverGridDelegateWithFixedCrossAxisCount(
                  //     crossAxisCount: 3,
                  //     mainAxisSpacing: 30,
                  //     crossAxisSpacing: 30),
                  itemBuilder: (context, index) {
                    return SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  width: 50,
                                  height: 50,
                                  child: Image.asset('${Images[index]}')),
                              Text("${Titles[index]}"),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: Titles.length,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 16.0, bottom: 16.0),
              child: Wrap(
                spacing: 30,
                runSpacing: 30,
                direction: Axis.horizontal,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("${Products[0]}"),
                          ),
                        ),
                        Text("${ProductsName[0]}"),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("${Products[1]}"),
                          ),
                        ),
                        Text("${ProductsName[1]}"),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("${Products[2]}"),
                          ),
                        ),
                        Text("${ProductsName[2]}"),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("${Products[3]}"),
                          ),
                        ),
                        Text("${ProductsName[3]}"),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("${Products[4]}"),
                          ),
                        ),
                        Text("${ProductsName[4]}"),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("${Products[5]}"),
                          ),
                        ),
                        Text("${ProductsName[5]}"),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("${Products[6]}"),
                          ),
                        ),
                        Text("${ProductsName[6]}"),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("${Products[7]}"),
                          ),
                        ),
                        Text("${ProductsName[7]}"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
