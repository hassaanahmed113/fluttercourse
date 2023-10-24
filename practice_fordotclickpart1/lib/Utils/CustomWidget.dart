import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomWidget {
  Widget textCus() {
    return Text(
      "My name is hassaan",
      style: TextStyle(
          fontSize: 18,
          fontFamily: GoogleFonts.aleo().fontFamily,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          decoration: TextDecoration.underline,
          fontStyle: FontStyle.italic),
    );
  }

  Widget conCus() {
    return Container(
      height: 600,
      width: 600,
      child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.red, width: 3),
              image: const DecorationImage(
                  image: NetworkImage(
                      'https://plus.unsplash.com/premium_photo-1676637000058-96549206fe71?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D'))),
          child: textCus()),
    );
  }

  Widget conCus1(context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.red, width: 3),
            image: const DecorationImage(
                image: NetworkImage(
                    'https://plus.unsplash.com/premium_photo-1676637000058-96549206fe71?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D'))),
        child: textCus());
  }

  Widget buttonOne() {
    return ElevatedButton(
        style: const ButtonStyle(
            fixedSize: MaterialStatePropertyAll(Size(300, 50)),
            padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
            backgroundColor: MaterialStatePropertyAll(Colors.green),
            elevation: MaterialStatePropertyAll(5),
            overlayColor: MaterialStatePropertyAll(Colors.blue),
            mouseCursor:
                MaterialStatePropertyAll(MaterialStateMouseCursor.clickable)),
        // style: TextButton.styleFrom(backgroundColor: Colors.red),
        onHover: (value) {},
        onPressed: () {
          print("Button One");
          ;
        },
        child: textCus());
  }

  Widget buttonTwo() {
    return OutlinedButton(
        style: ButtonStyle(
            side: MaterialStatePropertyAll(
                BorderSide(color: Colors.indigo, width: 5))),
        onPressed: () {
          print("Button Two");
        },
        child: textCus());
  }

  Widget buttonThree() {
    return TextButton(
        style: ButtonStyle(overlayColor: MaterialStatePropertyAll(Colors.blue)),
        onPressed: () {
          print("Button Three");
        },
        child: textCus());
  }

  Widget rowOne() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        textCus(),
        textCus(),
      ],
    );
  }

  Widget listCusHorizontal(context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          height: 200,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 20,
            itemBuilder: (context, index) {
              return Card(
                child: textCus(),
              );
            },
          ),
        ))
      ],
    );
  }

  Widget listCusVertical() {
    return ListView.builder(
      // separatorBuilder: (context, index) {
      //   return Divider(
      //     color: Colors.black,
      //   ); }

      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, index) {
        return textCus();
      },
    );
  }

  Widget gridCusBuilder() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 400,
            child: GridView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200),
              itemBuilder: (context, index) {
                return Text('data');
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget gridCusCount() {
    return GridView.extent(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      maxCrossAxisExtent: 200,
      children: [
        Text('Hassan'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
      ],
    );
  }
}
