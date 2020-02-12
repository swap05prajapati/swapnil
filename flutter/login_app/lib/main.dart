import 'package:flutter/material.dart';
import 'package:login_app/login_screen.dart' as l1;
import 'package:login_app/my_login.dart' as l2;
import 'package:login_app/simple.dart' as l3;

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
      home: l2.Login_page(),
    );
  }
}