import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/Home.dart';
import 'package:flutter_firebase/Login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              TextField(
                controller: emailcontroller,
                decoration: InputDecoration(
                    hintText: "Enter your email",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.indigo, width: 1),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: passwordcontroller,
                decoration: InputDecoration(
                    hintText: "Enter your password",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.indigo, width: 1),
                    )),
              ),
              ElevatedButton(
                  onPressed: () {
                    signupFunction();
                  },
                  child: Text("Signup")),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ));
                  },
                  child: Text("Login")),
            ],
          ),
        ),
      ),
    );
  }

  void signupFunction() async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: emailcontroller.text,
        password: passwordcontroller.text,
      );

      // If sign up is successful, navigate to the home screen.
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      print('Firebase Auth Exception:');
      print('Code: ${e.code}');
      print('Message: ${e.message}');
      String errorMessage = "";

      if (e.code == 'invalid-email') {
        errorMessage = 'invalid email';
      } else if (e.code == 'missing-password') {
        errorMessage = 'missing password';
      } else {
        errorMessage = 'weak password';
      }
      // Display an error message to the user.
      final snackbar = SnackBar(content: Text(errorMessage));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }
}
