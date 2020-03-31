import 'package:flutter/material.dart';

class Payment extends StatefulWidget{
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {

  void showDialogBox(){
      showDialog(
        context:context,
        builder:(context){
          return AlertDialog(
            title: Text('Enter Card no.'),
            content:Container(
              height: 200,
              width:300,
              child:Column(children: <Widget>[
                Container(
                  child:TextFormField(
                    decoration: InputDecoration(
                      labelText:'Card number',
                    ),
                  ),
                ),
              ],)
            ),

          );
        }

      );
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.green,
        title:Text('Payment Method'),
        centerTitle:true,
      ),
      body:ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            height: 70,
            color: Colors.white,
            child:GestureDetector(
            child: Text('Credit/Debit card',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize:20,
              fontWeight:FontWeight.bold,
              
            ),),
            onTap: (){
              showDialogBox();
            },
          ),
            
          ),
          Divider(),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            height: 70,
            color: Colors.white,
            child:GestureDetector(
            child: Text('PhonePay',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize:20,
              fontWeight:FontWeight.bold,
              
            ),),
            onTap: (){
              // showDialogBox();
            },
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            height: 70,
            color: Colors.white,
            child: Text('GooglePay',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize:20,
              fontWeight:FontWeight.bold,
              
            ),),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            height: 70,
            color: Colors.white,
            child: Text('Paytm',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize:20,
              fontWeight:FontWeight.bold,
              
            ),),
          ),
        ],
      ),
    );
  }
}