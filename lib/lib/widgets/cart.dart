import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  Widget _getAll() {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('prods').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        return new ListView(children: getProduct(snapshot));
      },
    );
  }

  getProduct(AsyncSnapshot<QuerySnapshot> snapshot) {
    return snapshot.data.documents
        .map((doc) => new ListTile(
        title: new Text(doc["name"]),
        subtitle: new Text(doc["price"].toString())))
        .toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Shopping Application'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.white,
            ),
          ),

        ],
      ),
      body: _getAll(),
    );
  }
}
//To Delete
//documentReference.delete().whenComplete(() {
//print("Deleted Successfully");
//setState(() {});
//}).catchError((e) => print(e));
//
//
//
//Single Record Fetch
//documentReference.get().then((datasnapshot) {
//if (datasnapshot.exists) {
//setState(() {
//myText = datasnapshot.data['desc'];
//});
//}
//});
