import 'package:flutter/material.dart';
import 'package:login_app/login_screen.dart' as l1;
import 'package:login_app/my_login.dart' as l2;
import 'package:login_app/simple.dart' as l3;
import 'package:login_app/swpie.dart' as l4;
import 'package:login_app/loginapp.dart'as l5;
import 'package:login_app/splash.dart' as l6;
import 'package:login_app/quiz.dart' as l7;

//import 'package:cached_network_image/cached_network_image.dart';
void main() => runApp(MyApp()); 

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: l7.Colorgame(),
      /*routes: {
        '/login': (context)=>l2.Login_page()
      },*/
    );
  }
}