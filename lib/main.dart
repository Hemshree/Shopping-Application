import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import './pages/addproduct.dart';

import './widgets/Categories.dart';
import './widgets/cart.dart';

void main() {
  runApp(MaterialApp(
    title: 'Shopping Application',
    home: HomePage(),
    debugShowCheckedModeBanner: false,
    
  ));
  
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _buildCarosual(){
    return Container(
      height: 300,
      child: Carousel(
        autoplay: true,
        animationCurve : Curves.fastOutSlowIn,
        animationDuration : Duration(milliseconds: 1000),
        boxFit : BoxFit.cover,
        indicatorBgPadding : 0.2,
        dotColor : Colors.teal,
        dotSize : 7,
        images : [
//          AssetImage('assets/images/s1.jpg'),
//          AssetImage('assets/images/s2.jpg'),
//          AssetImage('assets/images/s3.jpg'),
        NetworkImage('https://images.pexels.com/photos/1345082/pexels-photo-1345082.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          NetworkImage('https://image.shutterstock.com/image-photo/young-happy-summer-shopping-woman-260nw-611719892.jpg'),
          NetworkImage('https://static.toiimg.com/photo/59632433/.jpg'),


        ],

      ),

    );
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
            onPressed: () {
              print("Cart Call");
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Cart()));
            },
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        elevation: 10.0,
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text('Xyz@gmail.com'),
              accountName: Text('Xyz'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 30,
                  ),
                  backgroundColor: Colors.green,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home'),
                leading: Icon(
                  Icons.home,
                  color: Colors.teal,
                ),
              ),
            ),
            InkWell(
              onTap: (

                  ) {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> AddProduct()));
              },
              child: ListTile(
                title: Text('Add Product'),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.teal,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Orders'),
                leading: Icon(

                  Icons.shopping_basket,
                  color: Colors.teal,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Account'),
                leading: Icon(
                  Icons.account_box,
                  color: Colors.teal,
                ),
              ),
            ),
            Divider(
              color: Colors.teal,
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.teal,
                ),
              ),
            ),InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.person,
                  color: Colors.teal,
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          _buildCarosual(),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text('Catergories',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),),
          ),
          Categories(),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text('Popular products',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              decoration: TextDecoration.underline,

            ),),
          ),
//          Product(),

        ],
      ),
    );
  }
}
