import 'package:flutter/material.dart';

import 'package:quran/quran.dart' as quran;

class Surahs extends StatefulWidget {
  int indexsurah;
  Surahs({required this.indexsurah, super.key});

  @override
  State<Surahs> createState() => _SurahsState();
}

class _SurahsState extends State<Surahs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: Container(
                  width: double.infinity,
                  color: Colors.orange[900],
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "${quran.getSurahNameArabic(widget.indexsurah)}",
                      style: TextStyle(
                          fontFamily: 'arabicfont',
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.white,
                      height: 3,
                      thickness: 2,
                    );
                  },
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Surahs(
                                indexsurah: index + 1,
                              ),
                            ));
                      },
                      tileColor: Colors.green[700],
                      title: Text(
                        "${quran.getVerse(widget.indexsurah, index + 1, verseEndSymbol: true)}",
                        style: TextStyle(
                            fontFamily: 'arabicfont',
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white),
                        textAlign: TextAlign.right,
                      ),
                    );
                  },
                  itemCount: quran.getVerseCount(widget.indexsurah),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Back"))
            ],
          ),
        ),
      ),
    );
  }
}
