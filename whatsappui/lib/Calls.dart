import 'package:flutter/material.dart';

var image1 = [
  "assets/user.jpeg",
  "assets/person9.jpg",
  'assets/person10.jpg',
  "assets/person3.jpg",
  "assets/person4.jpg",
  "assets/person5.jpg",
  "assets/person6.jpg",
];
var title1 = [
  "Create Call Link",
  "Umer",
  "Imad",
  "Sameer",
  "Muneer",
  "Ameen",
  "Areej"
];
var subTitle1 = [
  "Share a link for your Whatsapp call",
  "Today, 6:35pm",
  "Today, 4:15pm",
  "Today, 3:30pm",
  "Today, 2:40pm",
  "Today, 1:35pm",
  "Today, 1:00pm",
];

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Container(
                width: 30,
                height: 30,
                child: Image.asset("assets/paper-pin.png"),
              ),
              backgroundColor: Colors.green[600],
              radius: 28,
            ),
            title: Text(
              "${title1[0]}",
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            subtitle: Text(
              "${subTitle1[0]}",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 5.0, bottom: 5.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Recent",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("${image1[index + 1]}"),
                    radius: 28,
                  ),
                  title: Text(
                    "${title1[index + 1]}",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  subtitle: Text(
                    "${subTitle1[index + 1]}",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  trailing: Icon(
                    Icons.phone,
                    color: Colors.green[600],
                  ),
                );
              },
              itemCount: title1.length - 1,
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 2,
                  height: 2,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
