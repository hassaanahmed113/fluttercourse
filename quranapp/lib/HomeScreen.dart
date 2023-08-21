import 'package:flutter/material.dart';

import 'package:quran/quran.dart' as quran;

import 'Surahs.dart';

var students = ['Hassaan', 'Hammad', 'kaleem', "kalam"];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.separated(
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
              leading: Text(
                "Juz: ${quran.getJuzNumber(index + 1, index + 1)}",
                style: TextStyle(color: Colors.white),
              ),
              title: Text(
                "${quran.getSurahNameArabic(index + 1)}",
                style: TextStyle(
                    fontFamily: 'arabicfont',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
              subtitle: Text(
                "${quran.getSurahNameEnglish(index + 1)}",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Text(
                "Total Verse: ${quran.getVerseCount(index + 1)}",
                style: TextStyle(color: Colors.white),
              ),
            );
          },
          itemCount: quran.totalSurahCount,
        ),
      ),
    );
    //      ListView(
    //   scrollDirection: Axis.vertical,
    //   reverse: true,
    //   children: [
    //     Text("${students[0]}"),
    //     Text("${students[1]}"),
    //     Text("${students[2]}"),
    //     Text("${students[3]}"),
    //   ],
    // )

    //         ListView.builder(
    //   itemExtent: 100,
    //   itemBuilder: (context, index) {
    //     return Text("${students[index]}");
    //   },
    //   itemCount: students.length,
    // )

    // ListView.separated(
    //     itemBuilder: (context, index) {
    //       return Text("${students[index]}");
    //     },
    //     separatorBuilder: (context, index) {
    //       return Divider(
    //         height: 10,
    //         thickness: 5,
    //       );
    //     },
    //     itemCount: students.length)
  }
}
