import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:textfieldpractice/HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var email = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Align(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/ss-01.png",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            )),
        Align(
          alignment: Alignment.center,
          child: Opacity(
            opacity: 0.4,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Container(
                height: 460,
                width: double.infinity,
                child: Card(
                  shadowColor: Colors.blue,
                  elevation: 10,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: Container(
              height: 420,
              width: double.infinity,
              child: Card(
                elevation: 0,
                color: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "LOGIN FORM",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff626865),
                          fontFamily: GoogleFonts.openSans().fontFamily),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: TextField(
                        controller: email,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          helperText: "Enter email including @ & .com",
                          helperStyle: TextStyle(
                            fontSize: 13,
                            color: Colors.black54,
                          ),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Color(0xff989B9A),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                              borderSide:
                                  BorderSide(width: 2, color: Colors.green)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              borderSide: BorderSide(
                                  width: 0, color: Colors.transparent)),
                          fillColor: Colors.white.withOpacity(0.4),
                          filled: true,
                          hintStyle: TextStyle(
                              color: Color(0xff989B9A),
                              fontSize: 14,
                              fontFamily: GoogleFonts.openSans().fontFamily),
                          hintText: "Your email or username",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: TextField(
                        controller: password,
                        obscureText: true,
                        obscuringCharacter: "*",
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          helperText: "At least 8 characters",
                          helperStyle: TextStyle(
                            fontSize: 13,
                            color: Colors.black54,
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Color(0xff989B9A),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                              borderSide:
                                  BorderSide(width: 2, color: Colors.green)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              borderSide: BorderSide(
                                  width: 0, color: Colors.transparent)),
                          fillColor: Colors.white.withOpacity(0.4),
                          filled: true,
                          hintStyle: TextStyle(
                              color: Color(0xff989B9A),
                              fontSize: 14,
                              fontFamily: GoogleFonts.openSans().fontFamily),
                          hintText: "Password",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 35.0, right: 30.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 15,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Remember Me",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 14,
                                  fontFamily:
                                      GoogleFonts.openSans().fontFamily),
                            )
                          ],
                        )),
                    SizedBox(
                      height: 14,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 35.0, right: 30.0),
                        child: InkWell(
                          onTap: () {
                            if (email.text.isEmpty &&
                                password.text.isNotEmpty) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                      backgroundColor: Colors.red,
                                      content: Center(
                                        child: Text(
                                          "Email is Empty",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )));
                            } else if (password.text.isEmpty &&
                                email.text.isNotEmpty) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                      backgroundColor: Colors.red,
                                      content: Center(
                                        child: Text(
                                          "Password is Empty",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )));
                            } else if (email.text.isEmpty &&
                                password.text.isEmpty) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                      backgroundColor: Colors.red,
                                      content: Center(
                                        child: Text(
                                          "Fields are Empty",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )));
                            } else {
                              var mail = email.text.toString();
                              var pass = password.text.toString();

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        HomeScreen(mail, pass),
                                  ));

                              email.clear();
                              password.clear();
                            }
                          },
                          child: Container(
                            height: 55,
                            width: double.infinity,
                            child: Card(
                              child: Center(
                                child: Text(
                                  "SIGN IN",
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.white,
                                      fontFamily:
                                          GoogleFonts.openSans().fontFamily),
                                ),
                              ),
                              shadowColor: Colors.black,
                              elevation: 8,
                              color: Color(0xff626167),
                              shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)),
                              ),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 35.0, right: 30.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(
                              bottom: 1,
                            ),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                              color: Colors.black87,
                              width: 0.1,
                            ))),
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              "assets/ss-02.png",
              height: MediaQuery.of(context).size.height * 0.2,
            )),
      ],
    ));
  }
}
