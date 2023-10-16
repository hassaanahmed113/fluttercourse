import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MethodoneApi extends StatefulWidget {
  const MethodoneApi({super.key});

  @override
  State<MethodoneApi> createState() => _MethodoneApiState();
}

class _MethodoneApiState extends State<MethodoneApi> {
  getApi() async {
    var response =
        await http.get(Uri.https('jsonplaceholder.typicode.com', 'photos'));
    var jsondata = jsonDecode(response.body);

    var data = [];
    for (var i in jsondata) {
      PhotoModel photo = PhotoModel(i['id'], i['title'], i['url']);
      data.add(photo);
    }
    print(data.toString());
    return data;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: FutureBuilder(
        future: getApi(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(snapshot.data[index].url),
                        Text(snapshot.data[index].title),
                        Text(snapshot.data[index].id.toString()),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}

class PhotoModel {
  int id;
  String title;
  String url;

  PhotoModel(this.id, this.title, this.url);
}
