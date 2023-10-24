import 'dart:async';
import 'dart:convert';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:practice_dotlcickapiprovider/CartScreen.dart';
import 'package:practice_dotlcickapiprovider/Utils/ListProvider.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List listreponse = [];
  bool isval = true;
  getApi() async {
    try {
      var response =
          await http.get(Uri.parse('https://fakestoreapi.com/products'));

      if (response.statusCode == 200) {
        setState(() {
          var dataJson = jsonDecode(response.body);
          listreponse = dataJson;
        });
        Timer(Duration(seconds: 2), () {
          setState(() {});
          isval = false;
        });
      } else {
        isval = true;
      }
    } catch (e) {
      print(e);
      isval = true;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getApi();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ListProvider>(builder: (context, listprovider, child) {
      return (Scaffold(
          appBar: AppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CartScreen(),
                        ));
                  },
                  child: Container(
                    child: badges.Badge(
                      badgeContent: Text(
                        listprovider.image.isEmpty
                            ? '0'
                            : listprovider.image.length.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      child: Icon(
                        CupertinoIcons.shopping_cart,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: isval
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : GridView.builder(
                  itemCount: listreponse.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisExtent: 360),
                  itemBuilder: (context, index) {
                    final item = listreponse[index];
                    return Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Card(
                        child: Column(
                          children: [
                            Container(
                                height: 200,
                                width: 200,
                                child: Image.network(item['image'].toString())),
                            Text(item['title'].toString()),
                            Text(item['price'].toString()),
                            ElevatedButton(
                                onPressed: () {
                                  listprovider.addMethod(item['image'],
                                      item['title'], item['price'], index);
                                },
                                child: Text("add to cart")),
                          ],
                        ),
                      ),
                    );
                  },
                )));
    });
  }
}
