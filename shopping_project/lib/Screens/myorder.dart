import 'package:flutter/material.dart';

class MyOrder extends StatefulWidget{
  @override
  _MyOrderState createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:Text('My Order'),
        centerTitle: true,
      ),
    );
  }
}