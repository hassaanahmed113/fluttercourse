import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

late Map mapresponse;
late Map mapresrate;

class MethodtwoApi extends StatefulWidget {
  const MethodtwoApi({super.key});

  @override
  State<MethodtwoApi> createState() => _MethodtwoApiState();
}

class _MethodtwoApiState extends State<MethodtwoApi> {
  bool isval = true;
  var data = [];
  var data1 = [];
  getApi() async {
    isval = true;
    var response =
        await http.get(Uri.parse('https://open.er-api.com/v6/latest/USD'));
    var rawdata = jsonDecode(response.body);

    if (response.statusCode == 200) {
      mapresponse = rawdata;
      mapresrate = mapresponse['rates'];

      for (var i in mapresrate.keys) {
        data.add(i);
      }
      for (var j in mapresrate.values) {
        data1.add(j);
      }
      isval = false;
      setState(() {});
      print(data);
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
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: isval
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Currency exchange rates (USD)",
                        style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "${data[index]} : ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  data1[index].toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ));
  }
}

class Modeldata {
  String curr;
  double val;

  Modeldata(this.curr, this.val);
}
