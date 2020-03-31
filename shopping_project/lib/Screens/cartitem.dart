import 'package:flutter/material.dart';
import 'package:shopping_project/model/item.dart';

class CartItem extends StatefulWidget{
  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:Text('Cart Product'),
        centerTitle: true,
      ),
    );
  }
}