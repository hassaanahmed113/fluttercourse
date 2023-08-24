import 'package:flutter/material.dart';

var image = [
  "assets/person1.jpg",
  "assets/person2.jpg",
  "assets/person3.jpg",
  "assets/person4.jpg",
  "assets/person5.jpg",
  "assets/person6.jpg",
  "assets/person7.jpg",
  "assets/person8.jpg",
  "assets/person9.jpg",
  'assets/person10.jpg',
  "assets/person3.jpg",
  "assets/person4.jpg",
  "assets/person5.jpg",
  "assets/person6.jpg",
];
var title = [
  "Kamran",
  "Hamza",
  "Hameed",
  "Jamal",
  "Muhammad",
  "Noman",
  "Aleem",
  "Kabir",
  "Umer",
  "Imad",
  "Sameer",
  "Muneer",
  "Ameen",
  "Areej"
];
var subTitle = [
  "hey are you there??",
  "meet me at 11am",
  "have you take today's class?",
  "who is this",
  "He is my friend",
  "Whats your roll number?",
  "Kamran is at my home",
  "Imad is not coming today",
  "Whats is your city?",
  "Did you complete the assignment?",
  "have you take today's class?",
  "who is this",
  "He is my friend",
  "Whats your roll number?",
];
var Timing = [
  "11:01pm",
  "10:18pm",
  "8:11pm",
  "6:30pm",
  "5:11pm",
  "5:00pm",
  "3:00pm",
  "2:45pm",
  "1:11pm",
  "1:01pm",
  "8:11pm",
  "6:30pm",
  "5:11pm",
  "5:00pm",
];

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("${image[index]}"),
              radius: 28,
            ),
            title: Text(
              "${title[index]}",
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            subtitle: Text(
              "${subTitle[index]}",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            trailing: Text(
              "${Timing[index]}",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          );
        },
        itemCount: title.length,
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 2,
            height: 2,
          );
        },
      ),
    );
  }
}
