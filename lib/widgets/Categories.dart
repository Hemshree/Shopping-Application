import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Widget _buildSingleCategory(imageName, caption){
    return Padding(
      padding: EdgeInsets.all(10),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100,
          child: ListTile(
            title: Image.asset(imageName),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                caption,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _buildSingleCategory('assets/images/shoe.png', 'Stilletoes'),
          _buildSingleCategory('assets/images/coat.png', 'Coat'),
          _buildSingleCategory('assets/images/dress.png', 'Dress'),
          _buildSingleCategory('assets/images/tie.png', 'Tie'),
          _buildSingleCategory('assets/images/earrings.png', 'Earrings'),
          _buildSingleCategory('assets/images/jean.png', 'Jeans'),

        ],
      ),
    );
  }
}
