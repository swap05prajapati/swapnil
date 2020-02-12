import 'dart:math';

import 'package:flutter/material.dart';
//import 'package:cached_network_image/cached_network_image.dart';


class Simple extends StatefulWidget
{
  @override
  _SimpleState createState() => _SimpleState();
}

class _SimpleState extends State<Simple> 
{
  Random rand= Random();

  List<String>random_image=[
    'https://images.unsplash.com/photo-1502759683299-cdcd6974244f?auto=format&fit=crop&w=440&h=220&q=60',
    'assets/images/21476119.jpg',
    'https://cdn.pixabay.com/photo/2020/01/29/06/39/sunset-4801688__340.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    //final CachedImage = new CachedNetworkImage();
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text('simple'),
          centerTitle: true,
        ),
        body:Container(
          child:Column(children: <Widget>[
            Expanded(
              flex:4,
              child:GestureDetector(
                onTap:(){
                  setState(){
                    //Image.asset(random_image.removeAt(rand.nextInt(random.length)));

                  };
                },
              child:Container(
                color:Colors.lightGreen,
                child:Image.asset('assets/images/21476119.jpg'),
              ),
            ),
            ),
            Expanded(
              flex:1,
              child:Container(
                color:Colors.grey[100],
              ),
            ),
          ],)
        ),
      ),
    );
  }
}