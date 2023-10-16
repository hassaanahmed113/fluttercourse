import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:restapi_method2_binance/util/ListProvider.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<ListProvider>(context, listen: false).getapiName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Consumer<ListProvider>(
        builder: (context, listprovider, child) {
          return listprovider.isbutton
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "BINANCE",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 21),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          final item = listprovider
                              .listresponse[listprovider.indexStored];
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "Symbol: ${item['symbol'].toString()}",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "priceChange: ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          "${item['priceChange'].toString()}",
                                          style: listprovider.isvalue
                                              ? TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 16)
                                              : TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 16),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "lastPrice: ${item['lastPrice'].toString()}",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "highPrice: ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          "${item['highPrice'].toString()}",
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "lowPrice: ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          "${item['lowPrice'].toString()}",
                                          style: TextStyle(
                                              color: Colors.red, fontSize: 16),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "volume: ${item['volume'].toString()}",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16),
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
