import 'package:flutter/material.dart';

class ThiredScreen extends StatefulWidget {
  const ThiredScreen({super.key});

  @override
  State<ThiredScreen> createState() => _ThiredScreenState();
}

class _ThiredScreenState extends State<ThiredScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 500,
          height: 490,
          color: Color(0xff512da8),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.tealAccent,
                width: 450,
                height: 50,
                child: Text(
                  "طلباء کی معلومات",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'urdufont',
                      fontWeight: FontWeight.bold,
                      color: Color(0xff000000)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 450,
                height: 380,
                child: Text(
                  " نام: حسان احمد \n عمر: 21 سال \n تعلیم: گریجویشن \n فیلڈ: کمپیوٹر سائنس \n کورس: فلٹر \n دورانیہ: چھ ماہ \n فون نمبر: 03491431130 \n شہر: کراچی",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'urdufont',
                      fontWeight: FontWeight.normal,
                      color: Color(0xffffffff)),
                  textAlign: TextAlign.right,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "پیچھے کی سکرین پر جائیں",
                    style: TextStyle(fontFamily: 'urdufont', fontSize: 22),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
