import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loginscreen/TextScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var email = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                "assets/4074779-02.png",
                height: 500,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 510,
              width: double.infinity,
              child: Card(
                  margin: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(width: 10, color: Colors.white),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(80),
                        topRight: Radius.circular(80),
                      )),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 35.0, top: 30.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Welcome",
                              style:
                                  TextStyle(color: Colors.purple, fontSize: 30),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 39.0, top: 5.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Row(
                              children: [
                                Text(
                                  "Don't have an account?",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                ),
                                Text(
                                  " Register Now",
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 42.0, top: 15.0, bottom: 4.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Email",
                              style: TextStyle(
                                  color: Colors.grey[600], fontSize: 16),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 35.0, right: 35.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: TextField(
                              controller: email,
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.green)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.purple)),
                                  filled: true,
                                  hintText: "Enter your email here",
                                  fillColor: Colors.white,
                                  suffixIcon: Icon(
                                    Icons.email,
                                    color: Colors.purple,
                                  )),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 42.0, top: 20.0, bottom: 4.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Password",
                              style: TextStyle(
                                  color: Colors.grey[600], fontSize: 16),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 35.0, right: 35.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: TextField(
                              obscureText: true,
                              obscuringCharacter: "*",
                              controller: password,
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.green)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1, color: Colors.purple)),
                                  filled: true,
                                  hintText: "Enter your password here",
                                  fillColor: Colors.white,
                                  suffixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.purple,
                                  )),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 35.0, right: 35.0, top: 20),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      size: 20,
                                      color: Colors.purple,
                                    ),
                                    Text(
                                      " Remember Me",
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Forget Password",
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 35.0, right: 35.0, top: 20),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: InkWell(
                                onTap: () {
                                  var mail = email.text.toString();
                                  var pass = password.text.toString();

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            TextScreen(mail, pass),
                                      ));
                                  email.clear();
                                  password.clear();
                                },
                                child: Container(
                                  height: 60,
                                  child: Card(
                                    child: Center(
                                      child: Text(
                                        "Login",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 23),
                                      ),
                                    ),
                                    color: Colors.purple,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 35.0, right: 35.0, top: 20),
                          child: Align(
                            alignment: Alignment.center,
                            child: Center(
                              child: Text(
                                "or Login with",
                                style: TextStyle(
                                    color: Colors.grey[600], fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 130.0, right: 130.0, top: 20),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      height: 30,
                                      child:
                                          Image.asset("assets/google (1).png")),
                                  Container(
                                      height: 30,
                                      child: Image.asset(
                                          "assets/facebook (3).png")),
                                  Container(
                                      height: 30,
                                      child: Image.asset(
                                          "assets/instagram (2).png"))
                                ]),
                          ),
                        )
                      ])),
            ),
          ),
        ],
      ),
    );
  }
}
