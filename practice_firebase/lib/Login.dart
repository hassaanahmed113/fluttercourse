import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:practice_firebase/Home.dart';
import 'package:practice_firebase/SignUp.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                      await _auth.signInWithEmailAndPassword(
                          email: emailcontroller.text,
                          password: passcontroller.text);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ));
                    } else {
                      const snackbar =
                          SnackBar(content: Text("any of the field is empty"));
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    }
                  } catch (e) {
                    const snackbar = SnackBar(
                        content: Text("User not found or invalid credentials"));
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    print(e);
                  }
                },
                child: Text("Login")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUp(),
                      ));
                },
                child: Text("Signup")),
          ],
        ),
      ),
    );
  }
}
