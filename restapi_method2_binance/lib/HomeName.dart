import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:restapi_method2_binance/Detail.dart';
import 'package:restapi_method2_binance/util/ListProvider.dart';

class HomeName extends StatefulWidget {
  const HomeName({super.key});

  @override
  State<HomeName> createState() => _HomeNameState();
}

class _HomeNameState extends State<HomeName> {
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
                        itemCount: listprovider.listresponse.length,
                        itemBuilder: (context, index) {
                          final item = listprovider.listresponse[index];
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                listprovider.indexstore(index);
                                listprovider.ValueChanged(index);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Detail(),
                                    ));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    item['symbol'].toString(),
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
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
