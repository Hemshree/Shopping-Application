//import 'package:flutter/material.dart';
//
//import 'package:cloud_firestore/cloud_firestore.dart';
//
//class Addtocart extends StatefulWidget {
//
//  @override
//  _AddtocartState createState() => _AddtocartState();
//}
//
//class _AddtocartState extends State<Addtocart> {
//  Widget _getCart() {
//    return StreamBuilder<QuerySnapshot>(
//      stream: Firestore.instance.collection('cart').snapshots(),
//      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//        return new ListView(children: _getCart(snapshot));
//      },
//    );
//  }
//  getCart(AsyncSnapshot<QuerySnapshot> snapshot) {
//    return snapshot.data.documents
//        .map((doc) => new ListTile(
//        title: new Text(doc["name"]),
//        subtitle: new Text(doc["price"].toString())))
//        .toList();
//  }
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: ListView(
//        children: <Widget>[
//
//
//
//
//        ],
//      ),
//    );
//  }
//}
