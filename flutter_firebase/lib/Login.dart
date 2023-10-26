import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/Home.dart';
import 'package:flutter_firebase/SignUp.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                    loginFunction();
                  },
                  child: Text("Login")),
              SizedBox(
                height: 20,
              ),
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
      ),
    );
  }

  void loginFunction() async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: emailcontroller.text,
        password: passwordcontroller.text,
      );

      // If login is successful, navigate to the home screen.
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      String errorMessage = "";
      print('Firebase Auth Exception:');
      print('Code: ${e.code}');
      print('Message: ${e.message}');
      if (e.code == 'invalid-email') {
        errorMessage = "invalid email";
      } else if (e.code == 'missing-password') {
        errorMessage = "missing password";
      } else {
        errorMessage = "wrong password";
      }

      // Display an error message to the user.
      final snackbar = SnackBar(content: Text(errorMessage));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } catch (e) {
      // Handle any other exceptions that might occur.
      const snackbar = SnackBar(content: Text('An unexpected error occurred'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }
}
