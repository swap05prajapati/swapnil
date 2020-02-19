import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_app/formpage.dart';
import 'package:login_app/splash.dart';
import 'package:login_app/loginapp.dart';

class Splash extends StatefulWidget{
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacementNamed(context, '/login');
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
            color:Colors.deepPurpleAccent,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex:2,
                child:Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 60.0,
                        child:Icon(Icons.airplanemode_active, size:60)
                      ),
                      Padding(padding: EdgeInsets.only(top:20),),
                      Text('Travel App',
                      style:TextStyle(color:Colors.white,fontSize: 25,
                      fontWeight:FontWeight.bold))
                    ],
                    ),
                ),

              ),
              Expanded(
                flex:1,
                child:Container(
                  child:Column(children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top:20)),
                      Text('Welcome to Travel_app',
                      style: TextStyle(
                        color:Colors.white,
                        fontSize:30,
                      ),)
                  ],)
                ),
              ),
            ],

          )


      ],)
    );
  }
}