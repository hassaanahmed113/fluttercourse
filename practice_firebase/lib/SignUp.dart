import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:practice_firebase/Home.dart';
import 'package:practice_firebase/Login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextField(
              controller: emailcontroller,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.indigo, width: 1))),
            ),
            TextField(
              controller: passcontroller,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.indigo, width: 1))),
            ),
            ElevatedButton(
                onPressed: () async {
                  try {
                    if (emailcontroller.text.isNotEmpty &&
                        passcontroller.text.isNotEmpty) {
                      await _auth.createUserWithEmailAndPassword(
                          email: emailcontroller.text,
                          password: passcontroller.text);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ));
                    } else {
                      const snackbar =
                          SnackBar(content: Text("Any of the field is empty"));
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    }
                  } catch (e) {
                    print(e);
                  }
                },
                child: Text("Sign up")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ));
                },
                child: Text("Sign in")),
          ],
        ),
      ),
    );
  }
}
