import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/model_quiz.dart';
import 'package:flutter_firebase/quiz_result.dart';

class SendData extends StatefulWidget {
  const SendData({super.key});

  @override
  State<SendData> createState() => _SendDataState();
}

class _SendDataState extends State<SendData> {
  // FirebaseFirestore firebase = FirebaseFirestore.instance;
  // FirebaseAuth auth = FirebaseAuth.instance;

  // Future<void> sendData() async {
  //   final user = auth.currentUser;
  //   if (user != null) {
  //     final userId = user.uid;
  //     final collectiondata = firebase.collection('user2');
  //     await collectiondata.doc(userId).set({
  //       'userId': userId,
  //       'wrong': 2,
  //       'correct': 1,
  //     });
  //   }
  // }
  QuizResultdb dbquiz = QuizResultdb();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                final auth = FirebaseAuth.instance;
                final user = auth.currentUser;
                if (user != null) {
                  dbquiz.addItem(
                      Quiz(userid: user.uid, wrong: '6', correct: '5'));
                }
              },
              child: Text("Create")),
          StreamBuilder<List<Quiz>>(
            stream: dbquiz.getQuizResultsForCurrentUser(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              }
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }
              if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return Text('No items found.');
              }
              return Expanded(
                child: ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    final quizItem = snapshot.data![index];
                    return ListTile(
                      leading: Text(quizItem.userid),
                      title: Text(quizItem.correct),
                      subtitle: Text(quizItem.wrong),

                      // You can add buttons to update or delete items here.
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
