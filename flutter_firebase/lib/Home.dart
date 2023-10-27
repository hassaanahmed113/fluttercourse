import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/Login.dart';
import 'package:flutter_firebase/sendata.dart';
import 'package:flutter_firebase/services/firebase_operation.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController id = TextEditingController();
  TextEditingController name = TextEditingController();
  FirebaseOperation firebs = FirebaseOperation();
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("its home class"),
          ElevatedButton(
              onPressed: () {
                signoutFunction();
              },
              child: Text("Signout")),
          TextField(
            controller: id,
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
            controller: name,
            decoration: InputDecoration(
                hintText: "Enter your password",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.indigo, width: 1),
                )),
          ),
          ElevatedButton(
              onPressed: () {
                firebs.addItem(Item(id: id.text, name: name.text));
                id.clear();
                name.clear();
              },
              child: Text("Create")),
          ElevatedButton(
              onPressed: () {
                firebs.updateItem(Item(id: id.text, name: name.text));
                id.clear();
                name.clear();
              },
              child: Text("Update")),
          ElevatedButton(
              onPressed: () {
                firebs.deleteItem(id.text);
                id.clear();
              },
              child: Text("Delete")),
          StreamBuilder<List<Item>>(
            stream: firebs.getItems(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              }
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }
              if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return Text('No items found.');
              }
              return Expanded(
                child: ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    final item = snapshot.data![index];
                    return ListTile(
                      title: Text(item.name),
                      // You can add buttons to update or delete items here.
                    );
                  },
                ),
              );
            },
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SendData(),
                    ));
              },
              child: Text("send data"))
        ],
      ),
    );
  }

  void signoutFunction() {
    try {
      _auth.signOut().then((value) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Login(),
            ));
      });
    } catch (e) {
      print(e);
    }
  }
}
