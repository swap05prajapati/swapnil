import 'package:flutter/material.dart';
import 'package:login_app/my_login.dart';

class First extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:Text('Travel WIth Us'),
        centerTitle:true ,
      ),
      body:Container(
        child:Column(children: <Widget>[
          Expanded(
            flex:1,
            child:Container(
              color:Colors.white,
            ),
          ),
        ],)
      ),
    );
  }
  
}