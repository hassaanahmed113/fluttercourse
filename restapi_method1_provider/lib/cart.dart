import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:restapi_method1/ListProvider.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Consumer<ListProvider>(
        builder: (context, listprovider, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Cart",
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: listprovider.imgeList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 100,
                                  width: 100,
                                  child: Image.network(
                                    listprovider.imgeList[index],
                                    fit: BoxFit.fitHeight,
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Column(
                                  children: [
                                    Text(listprovider.titleList[index]),
                                    Text(listprovider.brandList[index]),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Text(
                                    listprovider.priceList[index],
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  ToggleButton(() {
                                    listprovider.remove(index);
                                  })
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class ToggleButton extends StatefulWidget {
  final Function onpressed;
  ToggleButton(this.onpressed, {super.key});

  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool isCartIcon = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onpressed();
      },
      child: Container(
        height: 50,
        width: 50,
        padding: EdgeInsets.all(20),
        child: Center(
          child: Icon(
            Icons.delete,
            size: 20,
            color: Colors.grey[900],
          ),
        ),
      ),
    );
  }
}
