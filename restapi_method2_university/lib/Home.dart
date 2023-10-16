import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:restapi_method2_university/util/ListProvider.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<ListProvider>(context, listen: false).getAPI();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Consumer<ListProvider>(
        builder: (context, listProvider, child) {
          return listProvider.isval
              ? Center(child: CircularProgressIndicator())
              : Column(
                  children: [
                    Expanded(
                        child: ListView.builder(
                      itemCount: listProvider.listresponse.length,
                      itemBuilder: (context, index) {
                        final item = listProvider.listresponse[index];
                        List linkweb = item['web_pages'];
                        String link = linkweb.toString();
                        String link1 = link.substring(1, link.length - 1);
                        return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "University: ${item['name']}",
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                  Text(
                                    "Country: ${item['country']}",
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  ElevatedButton(
                                      onPressed: () async {
                                        final Uri _url = Uri.parse(link1);
                                        if (!await launchUrl(_url)) {
                                          throw Exception(
                                              'Could not launch $_url');
                                        }
                                      },
                                      child: Text("Visit website"))
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ))
                  ],
                );
        },
      ),
    );
  }
}
