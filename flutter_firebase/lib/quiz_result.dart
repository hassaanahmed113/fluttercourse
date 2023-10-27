import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/model_quiz.dart';

class QuizResultdb {
  Future<void> addItem(Quiz quiz) async {
    final quizdatauser = FirebaseFirestore.instance.collection('user4');
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      final user = auth.currentUser;
      if (user != null) {
        await quizdatauser.doc(user.uid).set(quiz.toMap());
      }
    } catch (e) {
      print('Error adding item: $e');
    }
  }

  Stream<List<Quiz>> getQuizResults() {
    CollectionReference items = FirebaseFirestore.instance.collection('user4');
    return items.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return Quiz(
          userid: doc['userid'],
          wrong: doc['wrong'],
          correct: doc['correct'],
        );
      }).toList();
    });
  }

  Stream<List<Quiz>> getQuizResultsForCurrentUser() {
    FirebaseAuth auth = FirebaseAuth.instance;
    final user = auth.currentUser;
    if (user != null) {
      CollectionReference items =
          FirebaseFirestore.instance.collection('user4');
      return items
          .where('userid', isEqualTo: user.uid)
          .snapshots()
          .map((snapshot) {
        return snapshot.docs.map((doc) {
          return Quiz(
            userid: doc['userid'],
            wrong: doc['wrong'],
            correct: doc['correct'],
          );
        }).toList();
      });
    }
    // If there is no currently authenticated user, return an empty stream.
    return Stream.value([]);
  }
}
