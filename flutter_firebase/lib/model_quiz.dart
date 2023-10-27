import 'package:flutter/material.dart';

class Quiz {
  String userid;
  String wrong;
  String correct;

  Quiz({required this.userid, required this.wrong, required this.correct});

  Map<String, dynamic> toMap() {
    return {
      'userid': userid,
      'wrong': wrong,
      'correct': correct,
    };
  }
}
