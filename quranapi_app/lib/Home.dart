import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List listresponse = [];
  int item2 = 0;
  late bool isval = true;

  getApi() async {
    isval = true;
    var response = await http
        .get(Uri.parse('https://api.alquran.cloud/v1/quran/quran-uthmani'));
    if (response.statusCode == 200) {
      var rawdata = jsonDecode(response.body);
      listresponse = rawdata['data']['surahs'];

      setState(() {
        isval = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: isval
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: listresponse.length,
                    itemBuilder: (context, index) {
                      final item = listresponse[index];
                      final item3 = listresponse[index]['ayahs'];

                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 400),
                        child: Container(
                          width: 400,
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 120),
                                child: Container(
                                  height: 50,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(item['number'].toString(),
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold)),
                                          Text(' - '),
                                          Text(item['englishName'].toString(),
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                      Text(
                                        item['englishNameTranslation']
                                            .toString(),
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        item['name'].toString(),
                                        style: TextStyle(
                                            fontFamily: 'arabic',
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height,
                                width: 550,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/kindpng_1309695.png'),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 80),
                                  child: ListView.builder(
                                    itemBuilder: (context, innerIndex) {
                                      final item1 = item3[innerIndex];
                                      return Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 80),
                                          child: Container(
                                            child: Text(
                                              item1['text'],
                                              style: TextStyle(
                                                fontFamily: 'arabic',
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              textAlign: TextAlign.right,
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    itemCount: item3.length,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
      ),
    );
  }
}
