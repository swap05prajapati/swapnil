import 'package:flutter/material.dart';
import 'package:shopping_project/Screens/payment.dart';

class PaymentTotal extends StatefulWidget{
  @override
  _PaymentTotalState createState() => _PaymentTotalState();
}

class _PaymentTotalState extends State<PaymentTotal> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.green,
        title:Text('Payment Detail'),
        centerTitle:true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.green,
        onPressed: ((){
          Navigator.push(context,
         MaterialPageRoute(builder: (context)=>Payment()));

        }), 
        label: Text('Proceed to Payment',
        style: TextStyle(
          color:Colors.white,
        ),),
      ),
    );
  }
}