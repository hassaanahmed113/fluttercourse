import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FirebaseOperation {
  Future<void> addItem(Item item) async {
    CollectionReference items = FirebaseFirestore.instance.collection('items');
    try {
      // Use the 'set' method to set the document with the same ID as the item's 'id'.
      await items.doc(item.id).set(item.toMap());
      print('Item added successfully');
    } catch (e) {
      print('Error adding item: $e');
    }
  }

  Stream<List<Item>> getItems() {
    CollectionReference items = FirebaseFirestore.instance.collection('items');
    return items.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return Item(
          id: doc['id'],
          name: doc['name'],
        );
      }).toList();
    });
  }

  Future<void> updateItem(Item item) async {
    CollectionReference items = FirebaseFirestore.instance.collection('items');
    try {
      await items.doc(item.id).update(item.toMap());
      print('Update successful');
    } catch (e) {
      print('Error updating item: $e');
    }
  }

  Future<void> deleteItem(String id) async {
    CollectionReference items = FirebaseFirestore.instance.collection('items');
    await items.doc(id).delete();
  }
}

class Item {
  final String id;
  final String name;

  Item({required this.id, required this.name});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }
}
