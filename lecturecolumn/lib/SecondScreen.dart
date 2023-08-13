import 'package:flutter/material.dart';

import 'ThiredScreen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: 500,
            height: 490,
            color: Colors.green,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  width: 450,
                  height: 50,
                  child: Text(
                    "پاکستان",
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
                    "پاکستان کا یوم آزادی، جو 14 اگست کو منایا جاتا ہے، 1947 میں برطانوی استعمار سے ملک کی آزادی کی یاد مناتا ہے۔ یہ دن بہت اہمیت رکھتا ہے کیونکہ یہ محکومی کے خاتمے اور ایک خودمختار پاکستان کے آغاز کی علامت ہے۔ تقریبات میں پرچم کشائی کی تقریبات، حب الوطنی پر مبنی تقاریر، پریڈز اور ملک بھر میں ثقافتی تقریبات شامل ہیں۔ پاکستانیوں کے لیے یہ وقت ہے کہ وہ اپنی تاریخ پر غور کریں، اپنے آباؤ اجداد کی قربانیوں کا احترام کریں، اور اپنی قومی شناخت کو فخر اور اتحاد کے ساتھ گلے لگائیں۔",
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ThiredScreen(),
                          ));
                    },
                    child: Text(
                      "اگلے صفحے پر جائیں",
                      style: TextStyle(fontFamily: 'urdufont', fontSize: 22),
                    ))
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
