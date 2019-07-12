import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class Addtocart extends StatefulWidget {

  @override
  _AddtocartState createState() => _AddtocartState();
}

class _AddtocartState extends State<Addtocart> {
  Widget _getCart() {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('cart').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        return new ListView(children: getCart(snapshot));
      },
    );
  }
  getCart(AsyncSnapshot<QuerySnapshot> snapshot) {
    return snapshot.data.documents
        .map((doc) => new ListTile(
      leading: Icon(Icons.add_shopping_cart),
        title: new Text(doc["name"]),
        subtitle: new Text(doc["price"].toString()),
    trailing: MaterialButton(child: Text('Add in Cart', style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 30,

    ),),
      onPressed: () {},
    ),)
    )


        .toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Shoping Application'),
          actions: <Widget>[
          IconButton(
          onPressed: () {

    },
      icon: Icon(
        Icons.search,
        color: Colors.white,
      ),
    ),
    IconButton(
    onPressed: () {

    },
    icon: Icon(Icons.add_shopping_cart, color: Colors.white),

    )
    ]
      ),
    body: _getCart(),
    );
  }
}
