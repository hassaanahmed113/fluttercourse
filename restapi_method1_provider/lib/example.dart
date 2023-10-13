import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class example extends StatefulWidget {
  const example({super.key});

  @override
  State<example> createState() => _exampleState();
}

class _exampleState extends State<example> {
  getApi() async {
    var response = await http.get(Uri.https('hub.dummyapis.com', 'ImagesList'));
    var jsondata = jsonDecode(response.body);
    var imgs = [];
    imgs = jsondata;
    print(imgs);
    return imgs;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getApi();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getApi(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.data == null) {
          return CircularProgressIndicator();
        } else {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              return Container(
                child: Image.network(snapshot.data[index]),
              );
            },
          );
        }
      },
    );
  }
}

class imgModel {
  String img;
  imgModel(this.img);
}
