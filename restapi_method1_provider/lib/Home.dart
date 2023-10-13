import 'dart:async';
import 'dart:convert';
import 'package:provider/provider.dart';
import 'package:restapi_method1/ListProvider.dart';
import 'package:restapi_method1/cart.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:async_button_builder/async_button_builder.dart';
import 'package:animated_icon_button/animated_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    getApiData();
  }

  bool isButton = false;
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  getApiData() async {
    var response = await http.get(Uri.https('dummyjson.com', 'products'));
    var jsonData = jsonDecode(response.body);
    print(jsonData);
    var product = [];
    for (var i in jsonData['products']) {
      ProdModel prod =
          ProdModel(i['title'], i['brand'], i['thumbnail'], i['price']);
      product.add(prod);
    }
    return product;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 15, bottom: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "E-SHOP",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Cart(),
                            ));
                      },
                      child: Text("Cart"))
                ],
              ),
            ),
          ),
          FutureBuilder(
            future: getApiData(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Container(
                  height: 500,
                  child: Center(
                    child: LoadingAnimationWidget.discreteCircle(
                        color: Colors.purple,
                        size: 50,
                        secondRingColor: Colors.black,
                        thirdRingColor: Colors.blue),
                  ),
                );
              } else {
                return Consumer<ListProvider>(
                    builder: (context, listprovider, child) {
                  return Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, mainAxisExtent: 350),
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        List<bool> isButtonTappedList = List.filled(100, false);
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 200,
                                    width: 200,
                                    child: Image.network(
                                      snapshot.data[index].image,
                                      fit: BoxFit.fitHeight,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Text(snapshot.data[index].title),
                                ),
                                Text(snapshot.data[index].brand),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        snapshot.data[index].price.toString(),
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                      Spacer(),
                                      ToggleButton(() {
                                        String img = snapshot.data[index].image;
                                        String title =
                                            snapshot.data[index].title;
                                        String brand =
                                            snapshot.data[index].brand;

                                        String price = snapshot
                                            .data[index].price
                                            .toString();
                                        listprovider.add(
                                            img, title, brand, price);
                                      })
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                });
              }
            },
          ),
        ],
      ),
    );
  }
}

class ProdModel {
  String title, brand, image;
  int price;

  ProdModel(this.title, this.brand, this.image, this.price);
}

class ToggleButton extends StatefulWidget {
  final Function onpressed;
  ToggleButton(this.onpressed, {super.key});

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool isCartIcon = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        isCartIcon = true;
        widget.onpressed();
        Timer(Duration(seconds: 2), () {
          if (mounted) {
            setState(() {
              isCartIcon = false;
            });
          }
        });
      },
      child: Container(
        height: 60,
        width: 60,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: isCartIcon ? Colors.green : Colors.blue,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Icon(
          isCartIcon ? Icons.done : FontAwesomeIcons.cartShopping,
          size: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
